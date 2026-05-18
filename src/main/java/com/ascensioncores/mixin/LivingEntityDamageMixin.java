package com.ascensioncores.mixin;

import com.ascensioncores.gear.GearHelper;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.projectile.Projectile;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.ModifyVariable;

@Mixin(LivingEntity.class)
public abstract class LivingEntityDamageMixin {

    @ModifyVariable(method = "hurtServer", at = @At("HEAD"), argsOnly = true, ordinal = 0)
    private float ascensioncores$applyCustomArmorStats(float amount, ServerLevel level, DamageSource source) {
        LivingEntity entity = (LivingEntity) (Object) this;
        if (amount <= 0.0f || entity.getMaxHealth() <= 0.0f) return amount;

        // Evasion (Complete Dodge)
        double evasion = GearHelper.getScaledArmorStatAmount(entity, "evasion");
        if (evasion > 0.0 && Math.random() < evasion) {
            level.sendParticles(net.minecraft.core.particles.ParticleTypes.SMOKE, entity.getX(), entity.getY() + entity.getBbHeight() / 2.0, entity.getZ(), 10, 0.3, 0.3, 0.3, 0.02);
            level.playSound(null, entity.blockPosition(), net.minecraft.sounds.SoundEvents.PLAYER_ATTACK_SWEEP, net.minecraft.sounds.SoundSource.PLAYERS, 0.5f, 1.5f);
            return 0.0f;
        }

        // Deflection (Projectile Reflection)
        if (source.getDirectEntity() instanceof Projectile projectile) {
            double deflection = GearHelper.getScaledArmorStatAmount(entity, "deflection");
            if (deflection > 0.0 && Math.random() < deflection) {
                projectile.setDeltaMovement(projectile.getDeltaMovement().scale(-0.5));
                level.playSound(null, entity.blockPosition(), net.minecraft.sounds.SoundEvents.SHIELD_BLOCK.value(), net.minecraft.sounds.SoundSource.PLAYERS, 0.8f, 1.2f);
                return 0.0f;
            }
        }

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
