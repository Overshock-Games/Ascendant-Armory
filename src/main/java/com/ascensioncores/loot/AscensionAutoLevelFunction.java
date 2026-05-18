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

        int enchantCount = GearHelper.countNonCurseEnchantments(stack);
        int cap = treasure ? AscensionCoresConfig.treasureNaturalLootMaxLevel : AscensionCoresConfig.naturalLootMaxLevel;
        int maxPossible = Math.min(Math.min(GearHelper.getMaxLevel(), cap), GearHelper.getMaterialCapacity(stack));
        
        if (enchantCount <= 0) {
            double chance = treasure ? AscensionCoresConfig.treasureUnenchantedLootAscensionChance : AscensionCoresConfig.unenchantedLootAscensionChance;
            if (chance > 0 && context.getRandom().nextFloat() < chance) {
                if (maxPossible > 0) {
                    int targetLevel = 1 + context.getRandom().nextInt(maxPossible);
                    GearHelper.setLevel(stack, targetLevel);
                }
            }
        } else {
            int targetLevel = Math.min(maxPossible, enchantCount);
            if (targetLevel > 0) {
                GearHelper.setLevel(stack, targetLevel);
            }
        }
        return stack;
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
