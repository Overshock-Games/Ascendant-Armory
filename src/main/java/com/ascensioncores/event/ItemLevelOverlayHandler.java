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

        drawCornerMarker(graphics, x, y, level);
    }

    private static void drawCornerMarker(GuiGraphicsExtractor g, int x, int y, int level) {
        int highlight = levelColor(level, 0xE8);
        int color = levelColor(level, 0xC8);
        int mid = darkLevelColor(level, 0xB8, 0.72F);
        int dark = darkLevelColor(level, 0xB8, 0.42F);
        int shade = 0x90000000;

        drawTopLeftTriangle(g, x, y, highlight, color, mid, dark, shade);
    }

    private static void drawTopLeftTriangle(
            GuiGraphicsExtractor g,
            int x,
            int y,
            int highlight,
            int color,
            int mid,
            int dark,
            int shade) {
        g.fill(x, y, x + 5, y + 1, shade);
        g.fill(x, y + 1, x + 4, y + 2, shade);
        g.fill(x, y + 2, x + 3, y + 3, shade);
        g.fill(x, y + 3, x + 2, y + 4, shade);

        g.fill(x, y, x + 5, y + 1, highlight);
        g.fill(x, y + 1, x + 4, y + 2, color);
        g.fill(x, y + 2, x + 3, y + 3, mid);
        g.fill(x, y + 3, x + 2, y + 4, dark);
        g.fill(x, y + 4, x + 1, y + 5, shade);
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

    private static int darkLevelColor(int level, int alpha, float brightness) {
        int color = levelColor(level, alpha);
        int r = (int) (((color >> 16) & 0xFF) * brightness);
        int g = (int) (((color >> 8) & 0xFF) * brightness);
        int b = (int) ((color & 0xFF) * brightness);
        return (alpha << 24) | (r << 16) | (g << 8) | b;
    }
}
