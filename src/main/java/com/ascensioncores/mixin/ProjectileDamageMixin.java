package com.ascensioncores.mixin;

import com.ascensioncores.gear.GearHelper;
import net.minecraft.server.level.ServerLevel;
import net.minecraft.world.damagesource.DamageSource;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.entity.projectile.Projectile;
import net.minecraft.world.entity.projectile.arrow.Arrow;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.phys.Vec3;
import org.spongepowered.asm.mixin.Mixin;
import org.spongepowered.asm.mixin.Unique;
import org.spongepowered.asm.mixin.injection.At;
import org.spongepowered.asm.mixin.injection.ModifyVariable;

@Mixin(LivingEntity.class)
public abstract class ProjectileDamageMixin {

    @ModifyVariable(method = "hurtServer", at = @At("HEAD"), argsOnly = true, ordinal = 0)
    private float ascensioncores$applyProjectileWeaponStats(float amount, ServerLevel level, DamageSource source) {
        if (amount <= 0.0f) return amount;

        Entity directEntity = source.getDirectEntity();
        if (!(directEntity instanceof Projectile)) return amount;

        if (!(source.getEntity() instanceof Player player)) return amount;

        ItemStack weapon = source.getWeaponItem();
        if (weapon == null) {
            weapon = player.getWeaponItem();
        }

        if (weapon == null || weapon.isEmpty() || !GearHelper.isGear(weapon)) return amount;

        LivingEntity target = (LivingEntity) (Object) this;

        boolean isCrit = (directEntity instanceof Arrow arrow && arrow.isCritArrow());

        if (isCrit) {
            double bonus = GearHelper.getScaledStatAmount(weapon, "critical_damage");
            if (bonus > 0.0) {
                amount *= (float) (1.0 + bonus);
            }
        }

        double executeBonus = GearHelper.getScaledStatAmount(weapon, "execute_damage");
        if (executeBonus > 0.0 && target.getHealth() / target.getMaxHealth() <= 0.35f) {
            amount *= (float) (1.0 + executeBonus);
        }

        double ambushBonus = GearHelper.getScaledStatAmount(weapon, "ambush_damage");
        if (ambushBonus > 0.0 && ascensioncores$isBehindTarget(player, target)) {
            amount *= (float) (1.0 + ambushBonus);
        }

        return amount;
    }

    @Unique
    private static boolean ascensioncores$isBehindTarget(Player player, Entity target) {
        Vec3 toPlayer = player.position().subtract(target.position());
        if (toPlayer.lengthSqr() < 1.0E-5) return false;
        return toPlayer.normalize().dot(target.getLookAngle().normalize()) < -0.55;
    }
}
