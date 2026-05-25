package com.ascensioncores.gear;

import net.minecraft.world.effect.MobEffects;
import net.minecraft.world.entity.Entity;
import net.minecraft.world.entity.LivingEntity;
import net.minecraft.world.entity.player.Player;
import net.minecraft.world.item.ItemStack;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * Trait synergies — passive damage bonuses that activate when two specific
 * traits sit on the same item AND a target-state condition is met.
 *
 * <p>Synergies are pure data: a pair of trait ids, a damage multiplier, and a
 * {@link Condition}. They piggyback on the existing damage pipeline in
 * {@code PlayerAttackMixin} — no per-synergy custom hooks.
 */
public final class Synergy {

    public enum Condition {
        TARGET_SLOWED,
        TARGET_POISONED,
        TARGET_WEAKENED;

        boolean matches(Player attacker, Entity target) {
            if (!(target instanceof LivingEntity le)) return false;
            return switch (this) {
                case TARGET_SLOWED -> le.hasEffect(MobEffects.SLOWNESS);
                case TARGET_POISONED -> le.hasEffect(MobEffects.POISON);
                case TARGET_WEAKENED -> le.hasEffect(MobEffects.WEAKNESS);
            };
        }
    }

    private final String id;
    private final String icon;
    private final String displayName;
    private final String description;
    private final String traitA;
    private final String traitB;
    private final double damageMultiplier;
    private final Condition condition;

    private Synergy(String id, String icon, String displayName, String description,
                    String traitA, String traitB, double damageMultiplier, Condition condition) {
        this.id = id;
        this.icon = icon;
        this.displayName = displayName;
        this.description = description;
        this.traitA = traitA;
        this.traitB = traitB;
        this.damageMultiplier = damageMultiplier;
        this.condition = condition;
    }

    public static final List<Synergy> ALL = List.of(
        new Synergy("cryoexecution", "❄", "Cryoexecution",
            "+25% damage to slowed targets",
            "frostbite", "execution_damage", 0.25, Condition.TARGET_SLOWED),
        new Synergy("plague_doctor", "☣", "Plague Doctor",
            "+25% damage to poisoned targets",
            "venom", "heal_suppress", 0.25, Condition.TARGET_POISONED),
        new Synergy("stormbreaker", "⚡", "Stormbreaker",
            "+25% damage to weakened targets",
            "shock", "wither", 0.25, Condition.TARGET_WEAKENED)
    );

    public String id() { return id; }
    public String icon() { return icon; }
    public String displayName() { return displayName; }
    public String description() { return description; }
    public String traitA() { return traitA; }
    public String traitB() { return traitB; }
    public double damageMultiplier() { return damageMultiplier; }

    public boolean fires(Player attacker, Entity target) {
        return condition.matches(attacker, target);
    }

    /** All synergies currently active on the given stack (both traits present). */
    public static List<Synergy> activeOn(ItemStack stack) {
        Set<String> ids = GearHelper.getRolledStats(stack).stream()
            .map(RolledStat::id)
            .collect(Collectors.toUnmodifiableSet());
        List<Synergy> out = new ArrayList<>();
        for (Synergy s : ALL) {
            if (ids.contains(s.traitA) && ids.contains(s.traitB)) out.add(s);
        }
        return out;
    }

    /** Lists synergies that involve the given trait id — for discovery in tooltips. */
    public static List<Synergy> involvingTrait(String traitId) {
        List<Synergy> out = new ArrayList<>();
        for (Synergy s : ALL) {
            if (s.traitA.equals(traitId) || s.traitB.equals(traitId)) out.add(s);
        }
        return out;
    }

    /** The partner trait id for a synergy, given one of its two traits. */
    public String partnerOf(String traitId) {
        if (traitA.equals(traitId)) return traitB;
        if (traitB.equals(traitId)) return traitA;
        return null;
    }
}
