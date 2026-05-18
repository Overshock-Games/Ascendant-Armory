package com.ascensioncores.compat;

import com.ascensioncores.AscensionCoresConfig;
import net.minecraft.network.chat.Component;
import net.minecraft.world.entity.LivingEntity;

import java.util.Locale;
import java.util.Set;

public final class BetterVanillaMobsCompat {

    private static final String TOUCHED_TAG = "fkbm.touched";
    private static final String ALPHA_TAG = "fkbm.alpha";

    private BetterVanillaMobsCompat() {
    }

    public static boolean isEnhanced(LivingEntity entity) {
        return AscensionCoresConfig.enableBetterVanillaMobsIntegration
            && entity.entityTags().contains(TOUCHED_TAG);
    }

    public static double getAscensionCoreDropChance(LivingEntity entity) {
        if (!isEnhanced(entity)) return 0.0;
        return scaledByRarity(
            entity,
            AscensionCoresConfig.betterVanillaMobsAscensionCoreDropChance,
            AscensionCoresConfig.betterVanillaMobsAscensionCoreDropChancePerStar
        );
    }

    public static double getChaosCoreDropChance(LivingEntity entity) {
        if (!isEnhanced(entity)) return 0.0;
        return scaledByRarity(
            entity,
            AscensionCoresConfig.betterVanillaMobsChaosCoreDropChance,
            AscensionCoresConfig.betterVanillaMobsChaosCoreDropChancePerStar
        );
    }

    public static int getRarityTier(LivingEntity entity) {
        if (!isEnhanced(entity)) return 0;
        if (entity.entityTags().contains(ALPHA_TAG)) return 5;

        Component customName = entity.getCustomName();
        if (customName == null) return getTagEstimatedRarityTier(entity);

        String name = customName.getString();
        int stars = countChar(name, '\u2605');
        if (stars > 0) return clampTier(stars);

        int skulls = countChar(name, '\u2620');
        if (skulls > 0) return clampTier(skulls);

        String lower = name.toLowerCase(Locale.ROOT);
        if (lower.contains("legendary")) return 5;
        if (lower.contains("epic")) return 4;
        if (lower.contains("rare")) return 3;
        if (lower.contains("uncommon")) return 2;
        if (lower.contains("common")) return 1;
        return getTagEstimatedRarityTier(entity);
    }

    private static double scaledByRarity(LivingEntity entity, double baseChance, double perStarChance) {
        int tier = getRarityTier(entity);
        double chance = baseChance + (Math.max(1, tier) - 1) * perStarChance;
        return Math.max(0.0, Math.min(1.0, chance));
    }

    private static int countChar(String value, char target) {
        int count = 0;
        for (int i = 0; i < value.length(); i++) {
            if (value.charAt(i) == target) count++;
        }
        return count;
    }

    private static int clampTier(int tier) {
        return Math.max(1, Math.min(5, tier));
    }

    private static int getTagEstimatedRarityTier(LivingEntity entity) {
        Set<String> tags = entity.entityTags();
        int score = 0;

        if (tags.contains("fkbm.affinity.fast")) score += 20;
        if (tags.contains("fkbm.affinity.heavy")) score += 15;
        if (tags.contains("fkbm.affinity.strong")) score += 15;
        if (tags.contains("fkbm.affinity.health")) score += 10;
        if (tags.contains("fkbm.affinity.resistant")) score += 10;

        for (String tag : tags) {
            if (isLikelyBvmSkillTag(tag)) score += 10;
        }

        if (score >= 80) return 5;
        if (score >= 60) return 4;
        if (score >= 40) return 3;
        if (score >= 20) return 2;
        return 1;
    }

    private static boolean isLikelyBvmSkillTag(String tag) {
        if (!tag.startsWith("fkbm.")) return false;
        if (tag.equals(TOUCHED_TAG) || tag.equals(ALPHA_TAG)) return false;
        if (tag.startsWith("fkbm.affinity.")) return false;
        if (tag.startsWith("fkbm.ignore")) return false;

        String suffix = tag.substring("fkbm.".length());
        return suffix.contains(".");
    }
}
