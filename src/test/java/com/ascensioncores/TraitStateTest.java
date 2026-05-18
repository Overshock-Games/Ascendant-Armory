package com.ascensioncores;

import com.ascensioncores.gear.TraitState;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

class TraitStateTest {

    private UUID player;
    private UUID targetA;
    private UUID targetB;

    @BeforeEach
    void setUp() {
        player  = UUID.randomUUID();
        targetA = UUID.randomUUID();
        targetB = UUID.randomUUID();
    }

    // ── Momentum ──────────────────────────────────────────────────────────────

    @Test
    void momentum_firstHit_returnsZero() {
        assertEquals(0, TraitState.getMomentumHits(player, targetA));
    }

    @Test
    void momentum_secondHitSameTarget_returnsOne() {
        TraitState.recordHit(player, targetA);
        assertEquals(1, TraitState.getMomentumHits(player, targetA));
    }

    @Test
    void momentum_multipleHitsSameTarget_accumulates() {
        TraitState.recordHit(player, targetA);
        TraitState.recordHit(player, targetA);
        TraitState.recordHit(player, targetA);
        assertEquals(3, TraitState.getMomentumHits(player, targetA));
    }

    @Test
    void momentum_switchTarget_resetsCount() {
        TraitState.recordHit(player, targetA);
        TraitState.recordHit(player, targetA);
        TraitState.recordHit(player, targetB); // switch
        assertEquals(0, TraitState.getMomentumHits(player, targetA));
        assertEquals(1, TraitState.getMomentumHits(player, targetB));
    }

    @Test
    void momentum_independentPerPlayer() {
        UUID player2 = UUID.randomUUID();
        TraitState.recordHit(player, targetA);
        TraitState.recordHit(player, targetA);
        assertEquals(2, TraitState.getMomentumHits(player, targetA));
        assertEquals(0, TraitState.getMomentumHits(player2, targetA));
    }

    // ── Grievous ──────────────────────────────────────────────────────────────

    @Test
    void grievous_noWound_returnsFalse() {
        assertFalse(TraitState.hasGrievousWound(targetA));
    }

    @Test
    void grievous_freshWound_returnsTrue() {
        TraitState.applyGrievousWound(targetA, 5000L);
        assertTrue(TraitState.hasGrievousWound(targetA));
    }

    @Test
    void grievous_expiredWound_returnsFalse() throws InterruptedException {
        TraitState.applyGrievousWound(targetA, 50L);
        Thread.sleep(60);
        assertFalse(TraitState.hasGrievousWound(targetA));
    }

    @Test
    void grievous_renewsOnReapply() throws InterruptedException {
        TraitState.applyGrievousWound(targetA, 80L);
        Thread.sleep(40);
        TraitState.applyGrievousWound(targetA, 5000L); // renew
        Thread.sleep(60);
        assertTrue(TraitState.hasGrievousWound(targetA)); // still active
    }

    @Test
    void grievous_independentPerEntity() {
        TraitState.applyGrievousWound(targetA, 5000L);
        assertFalse(TraitState.hasGrievousWound(targetB));
    }

    // ── Second Wind ───────────────────────────────────────────────────────────

    @Test
    void secondWind_firstTrigger_succeeds() {
        assertTrue(TraitState.trySecondWind(player, 30_000L));
    }

    @Test
    void secondWind_immediatlyAfter_blocked() {
        TraitState.trySecondWind(player, 30_000L);
        assertFalse(TraitState.trySecondWind(player, 30_000L));
    }

    @Test
    void secondWind_afterCooldownExpires_succeeds() throws InterruptedException {
        TraitState.trySecondWind(player, 50L);
        Thread.sleep(60);
        assertTrue(TraitState.trySecondWind(player, 50L));
    }

    @Test
    void secondWind_independentPerEntity() {
        UUID player2 = UUID.randomUUID();
        TraitState.trySecondWind(player, 30_000L);
        assertTrue(TraitState.trySecondWind(player2, 30_000L));
    }
}
