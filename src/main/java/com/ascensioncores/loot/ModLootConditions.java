package com.ascensioncores.loot;

import net.minecraft.core.Registry;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;

public final class ModLootConditions {

    private static boolean registered;

    private ModLootConditions() {}

    public static void register() {
        if (registered) return;
        registered = true;
        Registry.register(
            BuiltInRegistries.LOOT_CONDITION_TYPE,
            Identifier.fromNamespaceAndPath("ascensioncores", "config_chance"),
            AscensionConfigChanceCondition.CODEC
        );
        Registry.register(
            BuiltInRegistries.LOOT_FUNCTION_TYPE,
            Identifier.fromNamespaceAndPath("ascensioncores", "auto_level"),
            AscensionAutoLevelFunction.CODEC
        );
    }
}
