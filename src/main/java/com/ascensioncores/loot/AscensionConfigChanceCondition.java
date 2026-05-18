package com.ascensioncores.loot;

import com.ascensioncores.AscensionCoresConfig;
import com.mojang.serialization.Codec;
import com.mojang.serialization.MapCodec;
import com.mojang.serialization.codecs.RecordCodecBuilder;
import net.minecraft.world.level.storage.loot.LootContext;
import net.minecraft.world.level.storage.loot.predicates.LootItemCondition;

/**
 * Loot condition that reads its chance value from {@link AscensionCoresConfig} at
 * evaluation time rather than at table-build time. This keeps /ascensioncores reload
 * working for chest-loot rates without needing a full datapack /reload.
 */
public record AscensionConfigChanceCondition(String configKey) implements LootItemCondition {

    public static final MapCodec<AscensionConfigChanceCondition> CODEC = RecordCodecBuilder.mapCodec(instance ->
        instance.group(
            Codec.STRING.fieldOf("config_key").forGetter(AscensionConfigChanceCondition::configKey)
        ).apply(instance, AscensionConfigChanceCondition::new)
    );

    public static LootItemCondition.Builder of(String configKey) {
        return () -> new AscensionConfigChanceCondition(configKey);
    }

    @Override
    public boolean test(LootContext context) {
        return context.getRandom().nextFloat() < AscensionCoresConfig.getChance(configKey);
    }

    @Override
    public MapCodec<? extends LootItemCondition> codec() {
        return CODEC;
    }
}
