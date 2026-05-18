package com.ascensioncores.mixin;

import com.ascensioncores.gear.GearHelper;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.phys.Vec3;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Shadow;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.Inject;
import org.spongepowered.asm.mixin.injection.Redirect;
import org.spongepowered.asm.mixin.injection.callback.CallbackInfo;

@Mixin(Player.class)
public abstract class PlayerAttackMixin {

    @Unique
    private boolean ascensioncores$criticalAttack;

    @Shadow
    private boolean canCriticalAttack(Entity target) {
        throw new AssertionError();
    }

    @Inject(method = "attack", at = @At("HEAD"))
    private void ascensioncores$resetCriticalDamageState(Entity target, CallbackInfo ci) {
        ascensioncores$criticalAttack = false;
    }

    @Redirect(
        method = "attack",
        at = @At(
            value = "INVOKE",
            target = "Lnet/minecraft/world/entity/player/Player;canCriticalAttack(Lnet/minecraft/world/entity/Entity;)Z"
        )
    )
    private boolean ascensioncores$captureCriticalAttack(Player player, Entity target) {
        ascensioncores$criticalAttack = canCriticalAttack(target);
        return ascensioncores$criticalAttack;
    }

    @Redirect(
        method = "attack",
        at = @At(
            value = "INVOKE",
            target = "Lnet/minecraft/world/entity/Entity;hurtOrSimulate(Lnet/minecraft/world/damagesource/DamageSource;F)Z"
        )
    )
    private boolean ascensioncores$applyCriticalDamage(Entity target, DamageSource source, float amount) {
        Player player = (Player) (Object) this;
        ItemStack weapon = player.getWeaponItem();

        if (ascensioncores$criticalAttack) {
            double bonus = GearHelper.getScaledStatAmount(weapon, "critical_damage");
            if (bonus > 0.0) {
                amount *= (float) (1.0 + bonus);
            }
        }

        if (target instanceof LivingEntity livingTarget) {
            double executeBonus = GearHelper.getScaledStatAmount(weapon, "execute_damage");
            if (executeBonus > 0.0 && livingTarget.getHealth() / livingTarget.getMaxHealth() <= 0.35f) {
                amount *= (float) (1.0 + executeBonus);
            }
        }

        double ambushBonus = GearHelper.getScaledStatAmount(weapon, "ambush_damage");
        if (ambushBonus > 0.0 && ascensioncores$isBehindTarget(player, target)) {
            amount *= (float) (1.0 + ambushBonus);
        }

        return target.hurtOrSimulate(source, amount);
    }

    @Unique
    private static boolean ascensioncores$isBehindTarget(Player player, Entity target) {
        Vec3 toPlayer = player.position().subtract(target.position());
        if (toPlayer.lengthSqr() < 1.0E-5) return false;
        return toPlayer.normalize().dot(target.getLookAngle().normalize()) < -0.55;
    }
}
