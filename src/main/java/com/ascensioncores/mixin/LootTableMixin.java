package com.ascensioncores.mixin;

import com.ascensioncores.AscensionCoresConfig;
import com.ascensioncores.gear.GearHelper;
import net.minecraft.world.Container;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.storage.loot.LootParams;
import net.minecraft.world.level.storage.loot.LootTable;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

/**
 * Post-processes loot table results: any gear item with vanilla enchantments
 * but no ascension level gets its level synced to the enchant count, so
 * naturally-generated loot fits coherently in the ascension system.
 */
@Mixin(LootTable.class)
public abstract class LootTableMixin {

    @Inject(method = "fill", at = @At("TAIL"))
    private void ascensioncores$autoLevelLoot(Container container, LootParams params, long seed, CallbackInfo ci) {
        for (int i = 0; i < container.getContainerSize(); i++) {
            ItemStack stack = container.getItem(i);
            if (stack.isEmpty() || !GearHelper.isGear(stack)) continue;
            if (GearHelper.hasAscensionData(stack)) continue;

            int enchantCount = GearHelper.countNonCurseEnchantments(stack);
            int maxPossible = Math.min(GearHelper.getMaxLevel(), GearHelper.getMaterialCapacity(stack));

            if (enchantCount <= 0) {
                double chance = AscensionCoresConfig.unenchantedLootAscensionChance;
                if (chance > 0 && Math.random() < chance && maxPossible > 0) {
                    int targetLevel = 1 + (int)(Math.random() * maxPossible);
                    GearHelper.setLevel(stack, targetLevel);
                }
            } else {
                int targetLevel = Math.min(maxPossible, enchantCount);
                if (targetLevel > 0) {
                    GearHelper.setLevel(stack, targetLevel);
                }
            }
        }
    }
}
