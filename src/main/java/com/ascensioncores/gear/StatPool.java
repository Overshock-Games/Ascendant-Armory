package com.ascensioncores.gear;

import com.ascensioncores.AscensionCoresConfig;
import net.minecraft.core.Holder;
import net.minecraft.core.registries.BuiltInRegistries;
import net.minecraft.resources.Identifier;
import net.minecraft.world.entity.ai.attributes.Attribute;
import net.minecraft.world.entity.ai.attributes.Attributes;
import net.minecraft.world.entity.ai.attributes.AttributeModifier;
import net.fabricmc.loader.api.FabricLoader;
import net.puffish.attributesmod.api.PuffishAttributes;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.stream.Collectors;

public final class StatPool {

    /**
     * @param minAmount  lower bound of the per-multiplier random roll
     * @param maxAmount  upper bound of the per-multiplier random roll
     */
    public record StatDef(
        String id,
        Holder<Attribute> attribute,
        double minAmount,
        double maxAmount,
        String displayName,
        String unit,   // "%" → multiply by 100 and append %; otherwise append as-is
        AttributeModifier.Operation operation,
        int minLevel
    ) {
        public StatDef(String id, Holder<Attribute> attribute, double minAmount, double maxAmount, String displayName, String unit) {
            this(id, attribute, minAmount, maxAmount, displayName, unit, AttributeModifier.Operation.ADD_VALUE, 1);
        }

        public StatDef(String id, Holder<Attribute> attribute, double minAmount, double maxAmount, String displayName, String unit, int minLevel) {
            this(id, attribute, minAmount, maxAmount, displayName, unit, AttributeModifier.Operation.ADD_VALUE, minLevel);
        }

        public StatDef(String id, Holder<Attribute> attribute, double minAmount, double maxAmount, String displayName, String unit, AttributeModifier.Operation operation) {
            this(id, attribute, minAmount, maxAmount, displayName, unit, operation, 1);
        }
    }

    // ── Weapon pool (swords + axes) ─────────────────────────────────────────
    public static List<StatDef> WEAPON_POOL = createWeaponPool();

    // ── Armor pool ──────────────────────────────────────────────────────────
    public static List<StatDef> ARMOR_POOL = createArmorPool();

    // ── Tool pool (pickaxe, shovel, hoe) ────────────────────────────────────
    public static List<StatDef> TOOL_POOL = createToolPool();

    private static final Random RANDOM = new Random();
    private static final DecimalFormat COMPACT_DECIMAL = new DecimalFormat("0.##");

    public static void refresh() {
        WEAPON_POOL = createWeaponPool();
        ARMOR_POOL = createArmorPool();
        TOOL_POOL = createToolPool();
    }

    private static List<StatDef> createWeaponPool() {
        List<StatDef> pool = new ArrayList<>(List.of(
            new StatDef("life_steal",           PuffishAttributes.LIFE_STEAL,           0.02, 0.06, "Life Steal",           "%", 2),
            new StatDef("attack_speed",         Attributes.ATTACK_SPEED,                0.10, 0.30, "Attack Speed",         " pts"),
            new StatDef("armor_shred",          PuffishAttributes.ARMOR_SHRED,          0.50, 2.00, "Armor Shred",          " pts"),
            new StatDef("toughness_shred",      PuffishAttributes.TOUGHNESS_SHRED,      0.30, 1.00, "Toughness Shred",      " pts", 2),
            new StatDef("experience",           PuffishAttributes.EXPERIENCE,           0.05, 0.20, "XP Bonus",             "%"),
            new StatDef("healing",              PuffishAttributes.HEALING,              0.05, 0.15, "Healing Amp.",         "%", 2),
            new StatDef("critical_damage",      null,                                   0.10, 0.25, "Crit Damage",          "%", 3),
            new StatDef("execute_damage",       null,                                   0.08, 0.18, "Execute Damage",       "%", 3),
            new StatDef("ambush_damage",        null,                                   0.08, 0.18, "Ambush Damage",        "%", 3),
            new StatDef("sprinting_speed",      PuffishAttributes.SPRINTING_SPEED,      0.03, 0.10, "Sprint Speed",         "%", AttributeModifier.Operation.ADD_MULTIPLIED_BASE, 2),
            new StatDef("stealth",              PuffishAttributes.STEALTH,              0.50, 2.00, "Stealth",              " blk", 2),
            new StatDef("jump",                 PuffishAttributes.JUMP,                 0.05, 0.20, "Jump Height",          "%", AttributeModifier.Operation.ADD_MULTIPLIED_BASE, 2),
            new StatDef("repair_cost",          PuffishAttributes.REPAIR_COST,         -0.15,-0.05, "Repair Cost",          "%")
        ));
        addOptionalAttribute(pool, "staminaattributes", "stamina_attack_cost", "attacking_action_stamina_cost", -0.20, -0.05, "Attack Stamina Cost", " pts", 2);
        return List.copyOf(pool);
    }

    private static List<StatDef> createArmorPool() {
        List<StatDef> pool = new ArrayList<>(List.of(
            new StatDef("melee_resistance",     PuffishAttributes.MELEE_RESISTANCE,     0.50, 2.00, "Melee Resist.",        " DMG"),
            new StatDef("natural_regeneration", PuffishAttributes.NATURAL_REGENERATION, 0.05, 0.20, "Natural Regen",        "%", 2),
            new StatDef("last_stand_guard",     null,                                   0.05, 0.12, "Last Stand Guard",     "%", 3),
            new StatDef("steady_guard",         null,                                   0.04, 0.10, "Steady Guard",         "%", 3),
            new StatDef("sprinting_speed",      PuffishAttributes.SPRINTING_SPEED,      0.03, 0.10, "Sprint Speed",         "%", AttributeModifier.Operation.ADD_MULTIPLIED_BASE),
            new StatDef("consuming_speed",      PuffishAttributes.CONSUMING_SPEED,      0.03, 0.10, "Consume Speed",        "%", 2),
            new StatDef("repair_cost",          PuffishAttributes.REPAIR_COST,         -0.15,-0.05, "Repair Cost",          "%"),
            new StatDef("stealth",              PuffishAttributes.STEALTH,              0.50, 2.00, "Stealth",              " blk", 2),
            new StatDef("tamed_resistance",     PuffishAttributes.TAMED_RESISTANCE,     0.50, 2.00, "Tamed Resist.",        " DMG", 3),
            new StatDef("healing",              PuffishAttributes.HEALING,              0.05, 0.15, "Healing Amp.",         "%", 2),
            new StatDef("stamina",              PuffishAttributes.STAMINA,              0.50, 2.00, "Stamina",              " pts"),
            new StatDef("experience",           PuffishAttributes.EXPERIENCE,           0.05, 0.20, "XP Bonus",             "%"),
            new StatDef("jump",                 PuffishAttributes.JUMP,                 0.05, 0.20, "Jump Height",          "%", AttributeModifier.Operation.ADD_MULTIPLIED_BASE, 2)
        ));
        addOptionalAttribute(pool, "staminaattributes", "stamina_max", "max_stamina", 0.50, 2.00, "Max Stamina", " pts", 2);
        addOptionalAttribute(pool, "staminaattributes", "stamina_regeneration", "stamina_regeneration", 0.05, 0.20, "Stamina Regen", " pts", 2);
        return List.copyOf(pool);
    }

    private static List<StatDef> createToolPool() {
        List<StatDef> pool = new ArrayList<>(List.of(
            new StatDef("experience",           PuffishAttributes.EXPERIENCE,           0.05, 0.20, "XP Bonus",             "%"),
            new StatDef("repair_cost",          PuffishAttributes.REPAIR_COST,         -0.15,-0.05, "Repair Cost",          "%"),
            new StatDef("consuming_speed",      PuffishAttributes.CONSUMING_SPEED,      0.03, 0.10, "Consume Speed",        "%"),
            new StatDef("jump",                 PuffishAttributes.JUMP,                 0.05, 0.20, "Jump Height",          "%", AttributeModifier.Operation.ADD_MULTIPLIED_BASE, 2),
            new StatDef("natural_regeneration", PuffishAttributes.NATURAL_REGENERATION, 0.05, 0.20, "Natural Regen",        "%", 3),
            new StatDef("stamina",              PuffishAttributes.STAMINA,              0.50, 2.00, "Stamina",              " pts", 2),
            new StatDef("healing",              PuffishAttributes.HEALING,              0.05, 0.15, "Healing Amp.",         "%", 2),
            new StatDef("stealth",              PuffishAttributes.STEALTH,              0.50, 2.00, "Stealth",              " blk", 3),
            new StatDef("sprinting_speed",      PuffishAttributes.SPRINTING_SPEED,      0.03, 0.10, "Sprint Speed",         "%", AttributeModifier.Operation.ADD_MULTIPLIED_BASE, 2)
        ));
        addOptionalAttribute(pool, "staminaattributes", "stamina_break_cost", "block_breaking_action_stamina_cost", -0.20, -0.05, "Mining Stamina Cost", " pts", 2);
        addOptionalAttribute(pool, "staminaattributes", "stamina_max", "max_stamina", 0.50, 2.00, "Max Stamina", " pts", 2);
        return List.copyOf(pool);
    }

    private static void addOptionalAttribute(
            List<StatDef> pool,
            String modId,
            String id,
            String attributePath,
            double minAmount,
            double maxAmount,
            String displayName,
            String unit,
            int minLevel) {
        if (!FabricLoader.getInstance().isModLoaded(modId)) return;
        if ("staminaattributes".equals(modId) && !AscensionCoresConfig.enableStaminaAttributes) return;
        if (pool.stream().anyMatch(def -> def.id().equals(id))) return;

        Identifier attributeId = Identifier.fromNamespaceAndPath(modId, attributePath);
        BuiltInRegistries.ATTRIBUTE.get(attributeId).ifPresent(attribute ->
            pool.add(new StatDef(id, attribute, minAmount, maxAmount, displayName, unit, minLevel)));
    }

    // ── Rolling ─────────────────────────────────────────────────────────────

    /** Rolls a random stat from {@code pool} not already present in {@code existing}. Returns null if pool exhausted. */
    public static RolledStat rollStat(List<RolledStat> existing, List<StatDef> pool) {
        return rollStat(existing, pool, AscensionCoresConfig.maxLevel, RANDOM);
    }

    public static RolledStat rollStat(List<RolledStat> existing, List<StatDef> pool, Random random) {
        return rollStat(existing, pool, AscensionCoresConfig.maxLevel, random);
    }

    public static RolledStat rollStat(List<RolledStat> existing, List<StatDef> pool, int level) {
        return rollStat(existing, pool, level, RANDOM);
    }

    public static RolledStat rollStat(List<RolledStat> existing, List<StatDef> pool, int level, Random random) {
        Set<String> existingIds = existing.stream().map(RolledStat::id).collect(Collectors.toSet());
        List<StatDef> available = pool.stream()
            .filter(def -> def.minLevel() <= level)
            .filter(def -> !existingIds.contains(def.id()))
            .toList();
        if (available.isEmpty()) return null;

        StatDef chosen = available.get(random.nextInt(available.size()));
        double raw = chosen.minAmount() + random.nextDouble() * (chosen.maxAmount() - chosen.minAmount());
        double amount = Math.round(raw * 100.0) / 100.0;
        return new RolledStat(chosen.id(), amount);
    }

    // ── Lookup ──────────────────────────────────────────────────────────────

    public static StatDef getById(String id) {
        for (List<StatDef> pool : List.of(WEAPON_POOL, ARMOR_POOL, TOOL_POOL)) {
            for (StatDef def : pool) if (def.id().equals(id)) return def;
        }
        return null;
    }

    // ── Formatting ──────────────────────────────────────────────────────────

    public static String formatValue(StatDef def, double scaledAmount) {
        if ("%".equals(def.unit())) {
            return String.format("+%.0f%%", scaledAmount * 100);
        }
        if (" ticks".equals(def.unit())) {
            return formatSigned(Math.round(scaledAmount)) + def.unit();
        }
        return formatSigned(scaledAmount) + def.unit();
    }

    private static String formatSigned(double value) {
        return value < 0
            ? COMPACT_DECIMAL.format(value)
            : "+" + COMPACT_DECIMAL.format(value);
    }
}
