package com.ascensioncores.event;

import com.ascensioncores.AscensionCoresConfig;
import com.ascensioncores.gear.GearHelper;
import net.fabricmc.fabric.api.client.rendering.v1.ExtractItemDecorationsCallback;
import net.minecraft.client.gui.Font;
import net.minecraft.client.gui.GuiGraphicsExtractor;
import net.minecraft.world.item.ItemStack;

public final class ItemLevelOverlayHandler {

    public static void register() {
        ExtractItemDecorationsCallback.EVENT.register(ItemLevelOverlayHandler::appendLevelBadge);
    }

    private static void appendLevelBadge(
            GuiGraphicsExtractor graphics,
            Font font,
            ItemStack stack,
            int x,
            int y) {
        if (stack.isEmpty() || !GearHelper.isGear(stack)) return;
        if (!AscensionCoresConfig.showInventoryLevelMarkers) return;

        int level = GearHelper.getLevel(stack);
        if (level <= 0) return;

        drawBorder(graphics, x, y, level);
    }

    // Draws a 1-px border + a faded 2-px outer glow on the 16x16 slot region.
    private static void drawBorder(GuiGraphicsExtractor g, int x, int y, int level) {
        int solid = levelColor(level, 0xCC);
        int glow  = levelColor(level, 0x44);

        int r = x + 16;
        int b = y + 16;

        // outer glow (2px outside)
        g.fill(x - 2, y - 2, r + 2, y - 1, glow);
        g.fill(x - 2, b + 1, r + 2, b + 2, glow);
        g.fill(x - 2, y - 1, x - 1, b + 1, glow);
        g.fill(r + 1,  y - 1, r + 2, b + 1, glow);

        // inner glow / border (1px)
        g.fill(x - 1, y - 1, r + 1, y,     solid);
        g.fill(x - 1, b,     r + 1, b + 1, solid);
        g.fill(x - 1, y,     x,     b,     solid);
        g.fill(r,     y,     r + 1, b,     solid);
    }

    private static int levelColor(int level, int alpha) {
        int rgb = switch (level) {
            case 1 -> 0xFFFFFF;
            case 2 -> 0x55FFFF;
            case 3 -> 0xFF55FF;
            case 4 -> 0xFFAA00;
            default -> 0xFF5555;
        };
        return (alpha << 24) | rgb;
    }
}
