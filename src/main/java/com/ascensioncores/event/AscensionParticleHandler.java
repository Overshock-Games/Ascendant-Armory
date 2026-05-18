package com.ascensioncores.event;

import com.ascensioncores.gear.GearHelper;
import net.fabricmc.fabric.api.client.event.lifecycle.v1.ClientTickEvents;
import net.minecraft.client.CameraType;
import net.minecraft.client.Minecraft;
import net.minecraft.core.particles.DustParticleOptions;
import net.minecraft.util.RandomSource;
import net.minecraft.world.entity.EquipmentSlot;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.level.Level;

public final class AscensionParticleHandler {

    // Armor slot Y offsets from foot
    private static final double[] ARMOR_Y = { 0.1, 0.55, 1.1, 1.7 };
    private static final EquipmentSlot[] ARMOR_SLOTS = {
        EquipmentSlot.FEET, EquipmentSlot.LEGS, EquipmentSlot.CHEST, EquipmentSlot.HEAD
    };

    private static int tick = 0;

    public static void register() {
        ClientTickEvents.END_CLIENT_TICK.register(AscensionParticleHandler::onTick);
    }

    private static void onTick(Minecraft client) {
        if (client.player == null || client.level == null || client.isPaused()) return;
        tick++;
        // Spawn every 3 ticks
        if (tick % 3 != 0) return;

        Level level = client.level;
        boolean firstPerson = client.options.getCameraType() == CameraType.FIRST_PERSON;

        for (Player player : level.players()) {
            boolean isLocal = player == client.player;

            // Armor rings — skip local player in first person (rings clip camera)
            if (!isLocal || !firstPerson) {
                spawnArmorRings(level, player);
            }

            // Held item sparkles — always show, but use accurate hand position
            spawnHeldSparkles(level, player, client.player.getRandom());
        }
    }

    private static void spawnArmorRings(Level level, Player player) {
        double px = player.getX(), py = player.getY(), pz = player.getZ();
        for (int i = 0; i < ARMOR_SLOTS.length; i++) {
            ItemStack stack = player.getItemBySlot(ARMOR_SLOTS[i]);
            if (!GearHelper.isGear(stack)) continue;
            int lvl = GearHelper.getLevel(stack);
            if (lvl == 0) continue;
            spawnRing(level, px, py + ARMOR_Y[i], pz, lvl, 0.32, 3);
        }
    }

    private static void spawnHeldSparkles(Level level, Player player, RandomSource rand) {
        float yawRad = (float) Math.toRadians(player.getYRot());
        // MC: facing south(+Z) yaw=0 → right hand = west(-X). Right = (-cos, -sin), left = (cos, sin)
        double rightX = -Math.cos(yawRad);
        double rightZ = -Math.sin(yawRad);
        double fwdX   = -Math.sin(yawRad);
        double fwdZ   =  Math.cos(yawRad);

        spawnHandSparkles(level, player, player.getMainHandItem(),  rightX,  rightZ, fwdX, fwdZ, rand);
        spawnHandSparkles(level, player, player.getOffhandItem(),   -rightX, -rightZ, fwdX, fwdZ, rand);
    }

    private static void spawnHandSparkles(Level level, Player player, ItemStack stack,
                                           double sideX, double sideZ,
                                           double fwdX, double fwdZ,
                                           RandomSource rand) {
        if (!GearHelper.isGear(stack) || GearHelper.getLevel(stack) == 0) return;

        int lvl = GearHelper.getLevel(stack);
        DustParticleOptions dust = new DustParticleOptions(tierColor(lvl), 0.5f);

        double hx = player.getX() + sideX * 0.45 + fwdX * 0.2;
        double hy = player.getY() + 0.9;
        double hz = player.getZ() + sideZ * 0.45 + fwdZ * 0.2;

        for (int i = 0; i < 2; i++) {
            double ox = (rand.nextDouble() - 0.5) * 0.15;
            double oy =  rand.nextDouble() * 0.12;
            double oz = (rand.nextDouble() - 0.5) * 0.15;
            level.addParticle(dust, hx + ox, hy + oy, hz + oz,
                (rand.nextDouble() - 0.5) * 0.008, 0.02 + rand.nextDouble() * 0.02, (rand.nextDouble() - 0.5) * 0.008);
        }
    }

    private static void spawnRing(Level level, double cx, double cy, double cz,
                                   int ascLevel, double radius, int count) {
        DustParticleOptions dust = new DustParticleOptions(tierColor(ascLevel), 0.55f);
        double base = (tick / 100.0) * 2 * Math.PI; // full rotation every 5s
        double step = (2 * Math.PI) / count;
        for (int i = 0; i < count; i++) {
            double angle = base + step * i;
            level.addParticle(dust,
                cx + Math.cos(angle) * radius, cy,
                cz + Math.sin(angle) * radius,
                0, 0.003, 0);
        }
    }

    private static int tierColor(int level) {
        return switch (level) {
            case 1 -> 0xFFFFFF;
            case 2 -> 0x55FFFF;
            case 3 -> 0xFF55FF;
            case 4 -> 0xFFAA00;
            default -> 0xFF5555;
        };
    }
}
