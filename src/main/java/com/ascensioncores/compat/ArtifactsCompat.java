package com.ascensioncores.compat;

import net.fabricmc.loader.api.FabricLoader;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.item.Item;
import net.minecraft.world.item.ItemStack;

import java.lang.reflect.Method;
import java.util.Set;
import java.util.function.Consumer;

public final class ArtifactsCompat {

    public static final String MOD_ID = "artifacts";
    private static final int ARTIFACT_CAPACITY = 3;

    private static final Set<String> ARTIFACT_ITEMS = Set.of(
        "anglers_hat", "antidote_vessel", "aqua_dashers", "bunny_hoppers", "charm_of_shrinking",
        "charm_of_sinking", "chorus_totem", "cloud_in_a_bottle", "cowboy_hat", "cross_necklace",
        "crystal_heart", "digging_claws", "eternal_steak", "everlasting_beef", "feral_claws",
        "fire_gauntlet", "flame_pendant", "flippers", "golden_hook", "helium_flamingo",
        "kitty_slippers", "lucky_scarf", "night_vision_goggles", "novelty_drinking_hat",
        "obsidian_skull", "onion_ring", "panic_necklace", "pickaxe_heater", "plastic_drinking_hat",
        "pocket_piston", "power_glove", "rooted_boots", "running_shoes", "scarf_of_invisibility",
        "shock_pendant", "snorkel", "snowshoes", "steadfast_spikes", "strider_shoes",
        "superstitious_hat", "thorn_pendant", "umbrella", "universal_attractor", "vampiric_glove",
        "villager_hat", "warp_drive", "whoopee_cushion", "withered_bracelet"
    );

    private static Method iterateEquipmentMethod;
    private static boolean methodLookupAttempted;

    private ArtifactsCompat() {
    }

    public static boolean isArtifact(Item item) {
        Identifier id = BuiltInRegistries.ITEM.getKey(item);
        return id != null && MOD_ID.equals(id.getNamespace()) && ARTIFACT_ITEMS.contains(id.getPath());
    }

    public static boolean isHandArtifact(Item item) {
        Identifier id = BuiltInRegistries.ITEM.getKey(item);
        if (id == null || !MOD_ID.equals(id.getNamespace())) return false;
        return switch (id.getPath()) {
            case "digging_claws", "feral_claws", "power_glove", "fire_gauntlet", "pocket_piston",
                 "vampiric_glove", "golden_hook", "onion_ring", "pickaxe_heater", "withered_bracelet" -> true;
            default -> false;
        };
    }

    public static int getMaterialCapacity(Item item) {
        return isArtifact(item) ? ARTIFACT_CAPACITY : 0;
    }

    public static void forEachEquippedArtifact(LivingEntity entity, Consumer<ItemStack> consumer) {
        if (!FabricLoader.getInstance().isModLoaded(MOD_ID)) return;

        Method method = getIterateEquipmentMethod();
        if (method == null) return;

        try {
            method.invoke(null, entity, (Consumer<ItemStack>) stack -> {
                if (!stack.isEmpty() && isArtifact(stack.getItem())) {
                    consumer.accept(stack);
                }
            });
        } catch (ReflectiveOperationException ignored) {
            // Optional compat: if Artifacts changes this helper, leave Ascension behavior untouched.
        }
    }

    private static Method getIterateEquipmentMethod() {
        if (methodLookupAttempted) return iterateEquipmentMethod;
        methodLookupAttempted = true;

        try {
            Class<?> helper = Class.forName("artifacts.equipment.EquipmentHelper");
            iterateEquipmentMethod = helper.getMethod("iterateEquipment", LivingEntity.class, Consumer.class);
        } catch (ReflectiveOperationException ignored) {
            iterateEquipmentMethod = null;
        }
        return iterateEquipmentMethod;
    }
}
