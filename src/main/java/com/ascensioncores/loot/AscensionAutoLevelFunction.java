package com.ascensioncores.loot;

import com.ascensioncores.AscensionCoresConfig;
import com.ascensioncores.gear.GearHelper;
import com.mojang.serialization.Codec;
import com.mojang.serialization.MapCodec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.storage.loot.LootContext;
import net.minecraft.world.level.storage.loot.functions.LootItemConditionalFunction;
import net.minecraft.world.level.storage.loot.functions.LootItemFunction;
import net.minecraft.world.level.storage.loot.predicates.LootItemCondition;

import java.util.List;

public final class AscensionAutoLevelFunction extends LootItemConditionalFunction {

    public static final MapCodec<AscensionAutoLevelFunction> CODEC = RecordCodecBuilder.mapCodec(instance ->
        commonFields(instance)
            .and(Codec.BOOL.fieldOf("treasure").forGetter(AscensionAutoLevelFunction::treasure))
            .apply(instance, AscensionAutoLevelFunction::new)
    );

    private final boolean treasure;

    private AscensionAutoLevelFunction(List<LootItemCondition> predicates, boolean treasure) {
        super(predicates);
        this.treasure = treasure;
    }

    public static LootItemFunction.Builder treasureLoot() {
        return new Builder(true);
    }

    public boolean treasure() {
        return treasure;
    }

    @Override
    public MapCodec<AscensionAutoLevelFunction> codec() {
        return CODEC;
    }

    @Override
    protected ItemStack run(ItemStack stack, LootContext context) {
        if (stack.isEmpty() || !GearHelper.isGear(stack) || GearHelper.hasAscensionData(stack)) {
            return stack;
        }

        int maxPossible = GearHelper.getMaxLevel();

        double chance = treasure ? AscensionCoresConfig.treasureRandomLootAscensionChance : AscensionCoresConfig.randomLootAscensionChance;
        if (chance > 0 && context.getRandom().nextFloat() < chance) {
            double q = treasure ? AscensionCoresConfig.treasureLootLevelBumpChance : AscensionCoresConfig.lootLevelBumpChance;
            GearHelper.setLevel(stack, sampleTier(maxPossible, q, context.getRandom().nextFloat()));
        }
        return stack;
    }

    /**
     * Truncated geometric sample: tier weight = q^(tier-1) normalized over
     * {@code 1..max}. Consecutive tiers have a constant ratio of {@code q}, so
     * one knob controls the whole curve without the catch-all pileup of the
     * old loop-until-fail form.
     */
    private static int sampleTier(int max, double q, float roll) {
        if (max <= 1 || q <= 0.0) return 1;
        double sum = 0.0;
        double w = 1.0;
        for (int i = 0; i < max; i++) {
            sum += w;
            w *= q;
        }
        double target = roll * sum;
        double acc = 0.0;
        double weight = 1.0;
        for (int i = 0; i < max; i++) {
            acc += weight;
            if (target < acc) return i + 1;
            weight *= q;
        }
        return max;
    }

    private static final class Builder extends LootItemConditionalFunction.Builder<Builder> {
        private final boolean treasure;

        private Builder(boolean treasure) {
            this.treasure = treasure;
        }

        @Override
        protected Builder getThis() {
            return this;
        }

        @Override
        public LootItemFunction build() {
            return new AscensionAutoLevelFunction(getConditions(), treasure);
        }
    }
}
