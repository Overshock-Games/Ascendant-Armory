package com.ascensioncores.mixin;

import com.ascensioncores.gear.GearHelper;
import com.ascensioncores.item.ModItems;
import net.minecraft.world.Container;
import net.minecraft.world.inventory.AbstractContainerMenu;
import net.minecraft.world.inventory.GrindstoneMenu;
import net.minecraft.world.inventory.Slot;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Final;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(GrindstoneMenu.class)
public abstract class GrindstoneMenuMixin {

    @Shadow @Final Container repairSlots;
    @Shadow @Final private Container resultSlots;

    @Inject(method = "<init>(ILnet/minecraft/world/entity/player/Inventory;Lnet/minecraft/world/inventory/ContainerLevelAccess;)V", at = @At("RETURN"))
    private void onConstruct(int id, net.minecraft.world.entity.player.Inventory playerInv, net.minecraft.world.inventory.ContainerLevelAccess access, CallbackInfo ci) {
        AbstractContainerMenu menu = (AbstractContainerMenu) (Object) this;
        if (menu.slots.size() > 2) {
            Slot oldSlot = menu.slots.get(2);
            Slot newSlot = new Slot(this.resultSlots, 2, 129, 34) {
                @Override
                public boolean mayPlace(ItemStack stack) {
                    return oldSlot.mayPlace(stack);
                }

                @Override
                public void onTake(net.minecraft.world.entity.player.Player player, ItemStack stack) {
                    ItemStack top = GrindstoneMenuMixin.this.repairSlots.getItem(0);
                    ItemStack bottom = GrindstoneMenuMixin.this.repairSlots.getItem(1);
                    ItemStack input = !top.isEmpty() && bottom.isEmpty() ? top : (top.isEmpty() && !bottom.isEmpty() ? bottom : ItemStack.EMPTY);

                    int coresToRefund = 0;
                    if (!input.isEmpty() && GearHelper.isGear(input)) {
                        int level = GearHelper.getLevel(input);
                        if (level > 0) {
                            int prevLevel = level - 1;
                            coresToRefund = GearHelper.getAscensionCoreCost(prevLevel) / 2;
                        }
                    }

                    oldSlot.onTake(player, stack);

                    if (coresToRefund > 0) {
                        ItemStack cores = new ItemStack(ModItems.ASCENSION_CORE, coresToRefund);
                        if (!player.getInventory().add(cores)) {
                            player.drop(cores, false);
                        }
                    }
                }

                @Override
                public boolean mayPickup(net.minecraft.world.entity.player.Player player) {
                    return oldSlot.mayPickup(player);
                }

                @Override
                public ItemStack remove(int amount) {
                    return oldSlot.remove(amount);
                }
            };
            newSlot.index = oldSlot.index;
            menu.slots.set(2, newSlot);
        }
    }

    @Inject(method = "createResult", at = @At("RETURN"))
    private void onCreateResult(CallbackInfo ci) {
        ItemStack topSlot = this.repairSlots.getItem(0);
        ItemStack bottomSlot = this.repairSlots.getItem(1);

        // Only apply salvage if exactly one item is present to avoid vanilla repair conflicts
        ItemStack targetStack = ItemStack.EMPTY;
        if (!topSlot.isEmpty() && bottomSlot.isEmpty()) {
            targetStack = topSlot;
        } else if (topSlot.isEmpty() && !bottomSlot.isEmpty()) {
            targetStack = bottomSlot;
        }

        if (targetStack.isEmpty() || !GearHelper.isGear(targetStack)) {
            return;
        }

        int level = GearHelper.getLevel(targetStack);
        if (level > 0) {
            ItemStack vanillaResult = this.resultSlots.getItem(0);
            if (vanillaResult.isEmpty()) {
                ItemStack downgraded = targetStack.copy();
                GearHelper.setLevel(downgraded, level - 1);
                this.resultSlots.setItem(0, downgraded);
            } else {
                GearHelper.setLevel(vanillaResult, level - 1);
            }
        }
    }
}