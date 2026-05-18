package com.ascensioncores.gear;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public final class TraitState {

    // Momentum: last target + consecutive hit count, per player
    private static final Map<UUID, UUID> momentumTarget = new HashMap<>();
    private static final Map<UUID, Integer> momentumHits  = new HashMap<>();

    // Grievous wounds: entity UUID → expiry timestamp (ms)
    private static final Map<UUID, Long> grievousWounds = new HashMap<>();

    // Second Wind cooldown: entity UUID → next allowed trigger (ms)
    private static final Map<UUID, Long> secondWindCooldown = new HashMap<>();

    private TraitState() {}

    // ── Momentum ──────────────────────────────────────────────────────────────

    /** Returns consecutive hit count on {@code targetUUID} before this hit (0 on first hit). */
    public static int getMomentumHits(UUID playerUUID, UUID targetUUID) {
        if (targetUUID.equals(momentumTarget.get(playerUUID))) {
            return momentumHits.getOrDefault(playerUUID, 0);
        }
        return 0;
    }

    public static void recordHit(UUID playerUUID, UUID targetUUID) {
        if (targetUUID.equals(momentumTarget.get(playerUUID))) {
            momentumHits.merge(playerUUID, 1, Integer::sum);
        } else {
            momentumTarget.put(playerUUID, targetUUID);
            momentumHits.put(playerUUID, 1);
        }
    }

    // ── Grievous ──────────────────────────────────────────────────────────────

    public static boolean hasGrievousWound(UUID entityUUID) {
        Long expiry = grievousWounds.get(entityUUID);
        return expiry != null && System.currentTimeMillis() < expiry;
    }

    public static void applyGrievousWound(UUID entityUUID, long durationMs) {
        grievousWounds.put(entityUUID, System.currentTimeMillis() + durationMs);
    }

    // ── Second Wind ───────────────────────────────────────────────────────────

    /** Returns true and sets cooldown if Second Wind is off cooldown. */
    public static boolean trySecondWind(UUID entityUUID, long cooldownMs) {
        Long next = secondWindCooldown.get(entityUUID);
        long now = System.currentTimeMillis();
        if (next != null && now < next) return false;
        secondWindCooldown.put(entityUUID, now + cooldownMs);
        return true;
    }
}
