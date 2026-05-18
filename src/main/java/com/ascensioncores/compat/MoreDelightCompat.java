package com.ascensioncores.compat;

import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.item.Item;

public final class MoreDelightCompat {

    public static final String MOD_ID = "moredelight";

    private MoreDelightCompat() {
    }

    public static int getMaterialCapacity(Item item) {
        Identifier id = BuiltInRegistries.ITEM.getKey(item);
        if (id == null || !MOD_ID.equals(id.getNamespace())) return 0;

        return switch (id.getPath()) {
            case "wooden_knife" -> 0;
            case "stone_knife" -> 1;
            default -> 0;
        };
    }
}
