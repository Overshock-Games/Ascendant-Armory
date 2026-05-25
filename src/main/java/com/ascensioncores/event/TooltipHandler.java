package com.ascensioncores.event;

import com.ascensioncores.AscensionCoresConfig;
import com.ascensioncores.gear.GearHelper;
import com.ascensioncores.gear.RolledStat;
import com.ascensioncores.gear.StatPool;
import com.ascensioncores.gear.Curse;
import com.ascensioncores.gear.Synergy;
import com.ascensioncores.item.ModItems;
import net.fabricmc.fabric.api.client.item.v1.ItemTooltipCallback;
import net.minecraft.ChatFormatting;
import net.minecraft.network.chat.Component;
import net.minecraft.world.item.ItemStack;

import java.util.List;

public final class TooltipHandler {

    public static void register() {
        ItemTooltipCallback.EVENT.register(TooltipHandler::appendTooltip);
    }

    private static void appendTooltip(
            ItemStack stack,
            net.minecraft.world.item.Item.TooltipContext context,
            net.minecraft.world.item.TooltipFlag flag,
            List<Component> lines) {

        if (stack.is(ModItems.ASCENSION_CORE)) {
            lines.add(Component.literal("Use in an anvil to level up/ascend gear.").withStyle(ChatFormatting.GRAY));
            lines.add(Component.literal("Each level adds a new trait and enhances existing traits.").withStyle(ChatFormatting.DARK_GRAY));
            return;
        }

        if (stack.is(ModItems.CHAOS_CORE)) {
            lines.add(Component.literal("Use in an anvil to reroll traits on ascended gear.").withStyle(ChatFormatting.GRAY));
            lines.add(Component.literal("Rerolls lowest-rank traits first (bottom of list).").withStyle(ChatFormatting.DARK_GRAY));
            lines.add(Component.literal("Stack more cores to reroll more traits at once.").withStyle(ChatFormatting.DARK_GRAY));
            return;
        }

        if (!GearHelper.isGear(stack)) return;

        int level = GearHelper.getLevel(stack);
        int capacity = Math.min(GearHelper.getMaterialCapacity(stack), GearHelper.getMaxLevel());
        List<RolledStat> stats = GearHelper.getRolledStats(stack);

        if (level > 0 && !lines.isEmpty()) {
            Component original = lines.get(0);
            lines.set(0, Component.literal(levelTitle(level) + " ")
                .withStyle(style -> style.withColor(levelColor(level)))
                .append(original));
        }

        int maxLevel = GearHelper.getMaxLevel();
        StringBuilder pips = new StringBuilder("  Tier: ");
        for (int p = 1; p <= maxLevel; p++) pips.append(p <= level ? "◆" : "◇");
        lines.add(Component.literal(pips.toString())
            .withStyle(style -> style.withColor(levelColor(level)).withBold(true)));

        lines.add(Component.literal("  (" + stats.size() + "/" + capacity + " traits)")
            .withStyle(style -> style.withColor(levelColor(level))));

        Curse curse = Curse.byId(stack.get(com.ascensioncores.component.ModComponents.CURSE));
        if (curse != null) {
            lines.add(Component.literal("  ☠ Cursed: " + curse.displayName() + " (" + curse.description() + ")")
                .withStyle(ChatFormatting.DARK_RED));
        }

        for (int i = 0; i < stats.size(); i++) {
            RolledStat rolled = stats.get(i);
            StatPool.StatDef def = StatPool.getById(rolled.id());
            if (def == null) continue;

            int multiplier = level - i;
            if (multiplier <= 0) {
                int awakensAt = i + 1;
                lines.add(Component.literal("  ✦ " + def.displayName() + ": Awakens at L" + awakensAt)
                    .withStyle(style -> style.withColor(0x888888).withItalic(true)));
                continue;
            }

            double current = rolled.amount() * multiplier;
            String rankPips = "  " + "✦".repeat(multiplier) + " ";
            String display = rankPips + def.displayName() + ": " + formatStatValue(def, rolled.id(), current);
            lines.add(Component.literal(display).withStyle(style -> style.withColor(statColor(rolled.id()))));

            for (Synergy syn : Synergy.involvingTrait(rolled.id())) {
                boolean active = Synergy.activeOn(stack).stream().anyMatch(s -> s.id().equals(syn.id()));
                String partnerId = syn.partnerOf(rolled.id());
                if (active) {
                    // For an active synergy, only render the line under the *later* of the two
                    // contributing traits — otherwise it duplicates above and below.
                    int partnerIdx = -1;
                    for (int j = 0; j < stats.size(); j++) {
                        if (stats.get(j).id().equals(partnerId)) { partnerIdx = j; break; }
                    }
                    if (partnerIdx > i) continue;
                    StatPool.StatDef aDef = StatPool.getById(syn.traitA());
                    StatPool.StatDef bDef = StatPool.getById(syn.traitB());
                    String a = aDef != null ? aDef.displayName() : syn.traitA();
                    String b = bDef != null ? bDef.displayName() : syn.traitB();
                    lines.add(Component.literal(
                            "    " + syn.icon() + " " + syn.displayName() + " (" + a + " + " + b + ")")
                        .withStyle(style -> style.withColor(0xE0A040).withItalic(true)));
                    lines.add(Component.literal("       " + syn.description())
                        .withStyle(style -> style.withColor(0xC08838).withItalic(true)));
                } else {
                    StatPool.StatDef partnerDef = StatPool.getById(partnerId);
                    String partner = partnerDef != null ? partnerDef.displayName() : "?";
                    lines.add(Component.literal("    ↳ pairs with " + partner)
                        .withStyle(style -> style.withColor(0x666666).withItalic(true)));
                }
            }
        }

        if (AscensionCoresConfig.enableEnchantmentSlots) {
            lines.add(Component.literal("  Enchantment Slots: " + level)
                .withStyle(ChatFormatting.DARK_PURPLE));
        }

        int kills = stack.getOrDefault(com.ascensioncores.component.ModComponents.KILLS, 0);
        if (kills > 0) {
            lines.add(Component.literal("  Kills: " + kills)
                .withStyle(ChatFormatting.DARK_GRAY));
        }
    }

    private static String formatStatValue(StatPool.StatDef def, String id, double value) {
        if (id.equals("frostbite") || id.equals("venom") || id.equals("shock")
                || id.equals("wither") || id.equals("heal_suppress") || id.equals("pinning")) {
            return String.format("+%.1f%% Chance", value * 100.0);
        } else if (id.equals("life_steal")) {
            return String.format("+%.1f%%", value * 100.0);
        } else if (id.equals("repair_discount")) {
            return String.format("%.1f%% Discount", Math.abs(value) * 100.0);
        } else if (id.equals("low_health_guard") || id.equals("sneak_guard") || id.equals("standstill_guard") || id.equals("melee_resistance")) {
            return String.format("+%.1f%% Damage Reduction", value * 100.0);
        } else if (id.equals("emergency_healing")) {
            return String.format("+%.1f%% Max Health", value * 100.0);
        } else if (id.equals("reach") || id.equals("stealth")) {
            return String.format("+%.2f Blocks", value);
        }
        return StatPool.formatValue(def, value);
    }

    private static String levelTitle(int level) {
        return switch (level) {
            case 0 -> "Unawakened";
            case 1 -> "Honed";
            case 2 -> "Empowered";
            case 3 -> "Ascendant";
            case 4 -> "Mythic";
            default -> "Divine";
        };
    }

    private static int statColor(String id) {
        return switch (id) {
            case "life_steal"           -> 0xFF5555;
            case "reach"                -> 0x55AAFF;
            case "attack_speed"         -> 0xFFAA00;
            case "armor_shred"          -> 0xFF7755;
            case "toughness_shred"      -> 0xDD8866;
            case "experience_bonus"     -> 0x55FF55;
            case "critical_damage"      -> 0xFF55FF;
            case "execution_damage"     -> 0xFF3333;
            case "ambush_damage"        -> 0x7777FF;
            case "frostbite"            -> 0x55FFFF;
            case "venom"                -> 0x55FF55;
            case "shock"                -> 0xFFFF55;
            case "sprinting_speed"      -> 0x55FFAA;
            case "stealth"              -> 0x8888AA;
            case "jump"                 -> 0xAAFF55;
            case "repair_discount"      -> 0x66CCAA;
            case "opening_damage"       -> 0xFFD700;
            case "wither"               -> 0x7F00FF;
            case "chain_damage"         -> 0xFF8C00;
            case "heal_suppress"        -> 0xCC2200;
            case "pinning"              -> 0x4488FF;
            case "overcharge_damage"    -> 0xFFEE00;
            case "evasion"              -> 0x88FFDD;
            case "effect_resist"        -> 0xFFAA55;
            case "melee_resistance"     -> 0xBBBBBB;
            case "natural_regeneration" -> 0x66FF88;
            case "low_health_guard"     -> 0xFF8844;
            case "sneak_guard"          -> 0xC0C0C0;
            case "consuming_speed"      -> 0xFFDD66;
            case "tamed_resistance"     -> 0xDDFFAA;
            case "stamina"              -> 0x66FFCC;
            case "emergency_healing"    -> 0xFF88BB;
            case "standstill_guard"     -> 0xAAAAAA;
            case "max_health"           -> 0xFF2244;
            default                     -> 0x2BBBCC;
        };
    }

    private static int levelColor(int level) {
        return switch (level) {
            case 0 -> 0xB8B8B8;
            case 1 -> 0xFFFFFF;
            case 2 -> 0x55FFFF;
            case 3 -> 0xFF55FF;
            case 4 -> 0xFFAA00;
            default -> 0xFF5555;
        };
    }
}
