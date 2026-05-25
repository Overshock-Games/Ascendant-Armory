package com.ascensioncores.gear;

import net.minecraft.core.Holder;
import net.minecraft.world.entity.ai.attributes.Attribute;
import net.minecraft.world.entity.ai.attributes.AttributeModifier;
import net.minecraft.world.entity.ai.attributes.Attributes;

import java.util.List;
import java.util.Random;

/**
 * A curse — a permanent downside attached to a cursed item in exchange for an
 * amplified top trait. Pure data; one is rolled at first level-up when the
 * curse-traits config is on.
 */
public record Curse(String id, String displayName, String description,
                    Holder<Attribute> attribute, double amount,
                    AttributeModifier.Operation operation) {

    public static final List<Curse> ALL = List.of(
        new Curse("frail", "Frail", "−10% Max Health",
            Attributes.MAX_HEALTH, -0.10, AttributeModifier.Operation.ADD_MULTIPLIED_BASE),
        new Curse("sluggish", "Sluggish", "−8% Movement Speed",
            Attributes.MOVEMENT_SPEED, -0.08, AttributeModifier.Operation.ADD_MULTIPLIED_BASE),
        new Curse("brittle", "Brittle", "−2 Armor",
            Attributes.ARMOR, -2.0, AttributeModifier.Operation.ADD_VALUE),
        new Curse("weak", "Weak", "−10% Attack Damage",
            Attributes.ATTACK_DAMAGE, -0.10, AttributeModifier.Operation.ADD_MULTIPLIED_BASE)
    );

    public static Curse byId(String id) {
        if (id == null) return null;
        for (Curse c : ALL) if (c.id.equals(id)) return c;
        return null;
    }

    public static Curse random(Random rng) {
        return ALL.get(rng.nextInt(ALL.size()));
    }
}
