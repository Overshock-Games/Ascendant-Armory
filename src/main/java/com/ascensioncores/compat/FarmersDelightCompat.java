package com.ascensioncores.compat;

import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.item.Item;

public final class FarmersDelightCompat {

    public static final String MOD_ID = "farmersdelight";

    private FarmersDelightCompat() {
    }

    public static int getMaterialCapacity(Item item) {
        Identifier id = BuiltInRegistries.ITEM.getKey(item);
        if (id == null || !MOD_ID.equals(id.getNamespace())) return 0;

        return switch (id.getPath()) {
            case "flint_knife", "golden_knife" -> 1;
            case "copper_knife" -> 2;
            case "iron_knife", "skillet" -> 3;
            case "diamond_knife" -> 4;
            case "netherite_knife" -> 5;
            default -> 0;
        };
    }
}
