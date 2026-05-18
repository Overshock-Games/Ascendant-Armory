package com.ascensioncores.mixin;

import com.ascensioncores.AscensionCoresConfig;
import com.ascensioncores.gear.GearHelper;
import com.ascensioncores.item.ModItems;
import net.minecraft.network.chat.Component;
import net.minecraft.sounds.SoundEvents;
import net.minecraft.world.Container;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.inventory.AnvilMenu;
import net.minecraft.world.inventory.DataSlot;
import net.minecraft.world.inventory.ResultContainer;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Final;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(AnvilMenu.class)
public abstract class AnvilMenuMixin {

    @Shadow private int repairItemCountCost;
    @Shadow @Final private DataSlot cost;

    @Inject(method = "createResult", at = @At("RETURN"))
    private void interceptCreateResult(CallbackInfo ci) {
        ItemCombinerMenuAccessor acc = (ItemCombinerMenuAccessor) (Object) this;
        Container inputSlots = acc.getInputSlots();
        ResultContainer resultSlots = acc.getResultSlots();

        ItemStack left  = inputSlots.getItem(0);
        ItemStack right = inputSlots.getItem(1);

        if (left.isEmpty() || right.isEmpty()) return;
        if (!GearHelper.isGear(left)) return;

        int currentLevel = GearHelper.getLevel(left);

        // ── A: Upgrade with cores ──────────────────────────────────────────
        if (right.is(ModItems.ASCENSION_CORE)) {
            if (currentLevel >= GearHelper.getMaxLevel()) {
                resultSlots.setItem(0, ItemStack.EMPTY);
                return;
            }
            int coreCost = GearHelper.getAscensionCoreCost(currentLevel);
            if (right.getCount() < coreCost) {
                resultSlots.setItem(0, ItemStack.EMPTY);
                return;
            }
            ItemStack result = left.copy();
            GearHelper.levelUp(result);
            resultSlots.setItem(0, result);
            repairItemCountCost = coreCost;
            cost.set(ascensioncores$upgradeXpCost(currentLevel));
            return;
        }

        // ── B: Reroll with chaos core ──────────────────────────────────────
        if (right.is(ModItems.CHAOS_CORE)) {
            if (currentLevel == 0) {
                resultSlots.setItem(0, ItemStack.EMPTY);
                Player player = ((ItemCombinerMenuAccessor) (Object) this).getPlayer();
                if (player != null && AscensionCoresConfig.playAnvilFeedback) {
                    player.sendOverlayMessage(
                        Component.literal("Chaos cores need leveled gear (L1+).")
                            .withStyle(net.minecraft.ChatFormatting.RED));
                }
                return;
            }
            ItemStack result = left.copy();
            GearHelper.rerollDeterministic(result);
            resultSlots.setItem(0, result);
            repairItemCountCost = 1;
            cost.set(ascensioncores$rerollXpCost(currentLevel));
            return;
        }

        // ── C: Enchanted book — enforce enchantment capacity ──────────────
        ItemStack currentResult = resultSlots.getItem(0);
        if (currentResult.isEmpty()) return;
        if (!GearHelper.hasAscensionData(left)) return;

        int maxEnchants = currentLevel;
        if (GearHelper.countNonCurseEnchantments(currentResult) > maxEnchants) {
            resultSlots.setItem(0, ItemStack.EMPTY);
        }
    }

    @Inject(method = "onTake", at = @At("HEAD"))
    private void applyAscensionAnvilResult(Player player, ItemStack stack, CallbackInfo ci) {
        ItemCombinerMenuAccessor acc = (ItemCombinerMenuAccessor) (Object) this;
        Container inputSlots = acc.getInputSlots();

        ItemStack left = inputSlots.getItem(0);
        ItemStack right = inputSlots.getItem(1);

        if (stack.isEmpty() || left.isEmpty() || right.isEmpty()) return;

        if (right.is(ModItems.ASCENSION_CORE) && GearHelper.isGear(left)) {
            playFeedback(player, "Level " + GearHelper.getLevel(stack), GearHelper.getLevel(stack));
            return;
        }

        if (right.is(ModItems.CHAOS_CORE)) {
            if (!GearHelper.isGear(left) || GearHelper.getLevel(left) == 0) return;
            playFeedback(player, "Stats rerolled", GearHelper.getLevel(stack));
        }
    }


    @org.spongepowered.asm.mixin.Unique
    private static int ascensioncores$upgradeXpCost(int currentLevel) {
        return AscensionCoresConfig.getUpgradeXpCost(currentLevel);
    }

    @org.spongepowered.asm.mixin.Unique
    private static int ascensioncores$rerollXpCost(int currentLevel) {
        return currentLevel;
    }

    private static void playFeedback(Player player, String message, int level) {
        if (!AscensionCoresConfig.playAnvilFeedback) return;
        switch (level) {
            case 1 -> player.playSound(SoundEvents.AMETHYST_BLOCK_CHIME, 0.6f, 1.4f);
            case 2 -> player.playSound(SoundEvents.ENCHANTMENT_TABLE_USE, 0.6f, 1.2f);
            case 3 -> player.playSound(SoundEvents.RESPAWN_ANCHOR_CHARGE, 0.6f, 1.0f);
            case 4 -> player.playSound(SoundEvents.ENDER_DRAGON_GROWL, 0.4f, 1.5f);
            default -> player.playSound(SoundEvents.ENCHANTMENT_TABLE_USE, 0.6f, 1.2f);
        }
        player.sendOverlayMessage(Component.literal(message));
    }
}
