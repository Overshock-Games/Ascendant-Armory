package com.ascensioncores.compat;

import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.item.Item;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public final class ProgressionRebornCompat {

    public static final String MOD_ID = "progression_reborn";
    private static final int ROSE_CAPACITY = 3;

    private static final Set<String> ROSE_GEAR_IDS = Set.of(
        "rose_sword",
        "rose_axe",
        "rose_spear",
        "rose_pickaxe",
        "rose_shovel",
        "rose_hoe",
        "rose_helmet",
        "rose_chestplate",
        "rose_leggings",
        "rose_boots"
    );

    private ProgressionRebornCompat() {
    }

    public static int getMaterialCapacity(Item item) {
        Identifier id = BuiltInRegistries.ITEM.getKey(item);
        if (id == null || !MOD_ID.equals(id.getNamespace())) return 0;
        return ROSE_GEAR_IDS.contains(id.getPath()) ? ROSE_CAPACITY : 0;
    }

    public static List<Item> getRoseGearItems() {
        List<Item> items = new ArrayList<>();
        for (String path : ROSE_GEAR_IDS) {
            BuiltInRegistries.ITEM
                .getOptional(Identifier.fromNamespaceAndPath(MOD_ID, path))
                .ifPresent(items::add);
        }
        return items;
    }
}
