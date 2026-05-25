package com.ascensioncores.event;

import com.ascensioncores.component.ModComponents;
import com.ascensioncores.gear.GearHelper;
import net.fabricmc.fabric.api.entity.event.v1.ServerLivingEntityEvents;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.decoration.ArmorStand;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;

/**
 * Increments the {@link ModComponents#KILLS} counter on the killer's mainhand
 * weapon whenever a player lands a kill with leveled gear.
 *
 * <p>Pure flavor — gives each leveled weapon a tracked history players can see
 * on the tooltip. No gameplay effect.
 */
public final class KillCounterHandler {

    private static boolean registered;

    private KillCounterHandler() {
    }

    public static void register() {
        if (registered) return;
        registered = true;
        ServerLivingEntityEvents.AFTER_DEATH.register(KillCounterHandler::onDeath);
    }

    private static void onDeath(LivingEntity entity, net.minecraft.world.damagesource.DamageSource source) {
        if (entity instanceof Player) return;
        if (entity instanceof ArmorStand) return;
        if (!(source.getEntity() instanceof Player killer)) return;

        ItemStack weapon = killer.getMainHandItem();
        if (weapon.isEmpty() || !GearHelper.hasAscensionData(weapon)) return;

        int current = weapon.getOrDefault(ModComponents.KILLS, 0);
        weapon.set(ModComponents.KILLS, current + 1);
    }
}
