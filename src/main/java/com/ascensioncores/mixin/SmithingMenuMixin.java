package com.ascensioncores.mixin;

import com.ascensioncores.AscensionCoresConfig;
import com.ascensioncores.gear.GearHelper;
import net.minecraft.core.component.DataComponents;
import net.minecraft.world.inventory.SmithingMenu;
import net.minecraft.world.item.ItemStack;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(SmithingMenu.class)
public abstract class SmithingMenuMixin {

    @Inject(method = "createResult", at = @At("RETURN"))
    private void blockTrimOnAscensionGear(CallbackInfo ci) {
        if (!AscensionCoresConfig.enableAscensionTrims) return;
        ItemCombinerMenuAccessor acc = (ItemCombinerMenuAccessor) (Object) this;
        ItemStack base = acc.getInputSlots().getItem(SmithingMenu.BASE_SLOT);
        ItemStack result = acc.getResultSlots().getItem(0);
        if (result.isEmpty()) return;
        if (GearHelper.isGear(base) && GearHelper.getLevel(base) > 0 && result.has(DataComponents.TRIM)) {
            acc.getResultSlots().setItem(0, ItemStack.EMPTY);
        }
    }
}
