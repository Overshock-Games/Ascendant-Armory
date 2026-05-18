package com.ascensioncores.mixin;

import com.ascensioncores.gear.GearHelper;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.entity.LivingEntity;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.ModifyVariable;

@Mixin(LivingEntity.class)
public abstract class LivingEntityDamageMixin {

    @ModifyVariable(method = "hurtServer", at = @At("HEAD"), argsOnly = true, ordinal = 0)
    private float ascensioncores$applyCustomArmorStats(float amount, ServerLevel level, DamageSource source) {
        LivingEntity entity = (LivingEntity) (Object) this;
        if (amount <= 0.0f || entity.getMaxHealth() <= 0.0f) return amount;

        double lastStand = GearHelper.getScaledArmorStatAmount(entity, "last_stand_guard");
        if (lastStand > 0.0 && entity.getHealth() / entity.getMaxHealth() <= 0.35f) {
            amount *= (float) (1.0 - Math.min(lastStand, 0.60));
        }

        double steadyGuard = GearHelper.getScaledArmorStatAmount(entity, "steady_guard");
        if (steadyGuard > 0.0 && entity.isShiftKeyDown()) {
            amount *= (float) (1.0 - Math.min(steadyGuard, 0.50));
        }

        return amount;
    }
}
