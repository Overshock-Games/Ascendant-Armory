package com.ascensioncores.compat;

import com.ascensioncores.gear.GearHelper;
import com.ascensioncores.gear.StatPool;
import com.ascensioncores.item.ModItems;
import mezz.jei.api.IModPlugin;
import mezz.jei.api.constants.RecipeTypes;
import mezz.jei.api.constants.VanillaTypes;
import mezz.jei.api.recipe.vanilla.IJeiAnvilRecipe;
import mezz.jei.api.recipe.vanilla.IJeiGrindstoneRecipe;
import mezz.jei.api.recipe.vanilla.IVanillaRecipeFactory;
import mezz.jei.api.registration.IRecipeCatalystRegistration;
import mezz.jei.api.registration.IRecipeRegistration;
import net.minecraft.network.chat.Component;
import net.minecraft.resources.Identifier;
import net.minecraft.world.item.ItemStack;
import net.minecraft.world.item.Items;

import java.util.ArrayList;
import java.util.List;

@mezz.jei.api.JeiPlugin
public class JeiPlugin implements IModPlugin {

    @Override
    public Identifier getPluginUid() {
        return Identifier.fromNamespaceAndPath("ascensioncores", "jei_plugin");
    }

    @Override
    public void registerRecipes(IRecipeRegistration registration) {
        IVanillaRecipeFactory factory = registration.getVanillaRecipeFactory();

        List<IJeiAnvilRecipe> anvilRecipes = createAnvilRecipes(factory);
        registration.addRecipes(RecipeTypes.ANVIL, anvilRecipes);
        registration.addRecipes(RecipeTypes.GRINDSTONE, createGrindstoneRecipes(factory));

        registerCoreInfo(registration);
        registerMechanicInfo(registration);

        registerStatPoolInfo(registration, "Weapon", StatPool.WEAPON_POOL);
        registerStatPoolInfo(registration, "Armor", StatPool.ARMOR_POOL);
        registerStatPoolInfo(registration, "Tool", StatPool.TOOL_POOL);
    }

    @Override
    public void registerRecipeCatalysts(IRecipeCatalystRegistration registration) {
        registration.addCraftingStation(RecipeTypes.ANVIL, VanillaTypes.ITEM_STACK, new ItemStack(ModItems.ASCENSION_CORE));
        registration.addCraftingStation(RecipeTypes.GRINDSTONE, VanillaTypes.ITEM_STACK, new ItemStack(ModItems.ASCENSION_CORE));
        registration.addCraftingStation(RecipeTypes.ANVIL, VanillaTypes.ITEM_STACK, new ItemStack(ModItems.CHAOS_CORE));
        registration.addCraftingStation(RecipeTypes.ANVIL, Items.ANVIL, Items.CHIPPED_ANVIL, Items.DAMAGED_ANVIL);
        registration.addCraftingStation(RecipeTypes.GRINDSTONE, Items.GRINDSTONE);
    }

    private List<IJeiAnvilRecipe> createAnvilRecipes(IVanillaRecipeFactory factory) {
        List<IJeiAnvilRecipe> recipes = new ArrayList<>();
        addUpgradeChain(factory, recipes, Items.IRON_CHESTPLATE, "iron_chestplate");
        addUpgradeChain(factory, recipes, Items.DIAMOND_SWORD, "diamond_sword");
        addUpgradeChain(factory, recipes, Items.BOW, "bow");

        ItemStack rerollInput = new ItemStack(Items.DIAMOND_SWORD);
        GearHelper.setLevel(rerollInput, 3);
        ItemStack rerollOutput = rerollInput.copy();
        GearHelper.rerollDeterministic(rerollOutput);
        recipes.add(factory.createAnvilRecipe(
            List.of(rerollInput),
            List.of(new ItemStack(ModItems.CHAOS_CORE)),
            List.of(rerollOutput),
            id("jei_anvil_reroll_diamond_sword_l3")
        ));
        return recipes;
    }

    private void addUpgradeChain(IVanillaRecipeFactory factory, List<IJeiAnvilRecipe> recipes, net.minecraft.world.item.Item item, String name) {
        for (int currentLevel = 0; currentLevel < GearHelper.getMaxLevel(); currentLevel++) {
            ItemStack input = new ItemStack(item);
            GearHelper.setLevel(input, currentLevel);
            ItemStack output = input.copy();
            GearHelper.setLevel(output, currentLevel + 1);
            recipes.add(factory.createAnvilRecipe(
                List.of(input),
                List.of(new ItemStack(ModItems.ASCENSION_CORE, GearHelper.getAscensionCoreCost(currentLevel))),
                List.of(output),
                id("jei_anvil_upgrade_" + name + "_l" + currentLevel + "_to_l" + (currentLevel + 1))
            ));
        }
    }

    private List<IJeiGrindstoneRecipe> createGrindstoneRecipes(IVanillaRecipeFactory factory) {
        ItemStack input = new ItemStack(Items.DIAMOND_CHESTPLATE);
        GearHelper.setLevel(input, 3);
        ItemStack output = input.copy();
        GearHelper.setLevel(output, 2);
        return List.of(factory.createGrindstoneRecipe(
            List.of(input),
            List.of(),
            List.of(output, new ItemStack(ModItems.ASCENSION_CORE, GearHelper.getAscensionCoreCost(2) / 2)),
            0,
            0,
            id("jei_grindstone_level_salvage")
        ));
    }

    private void registerCoreInfo(IRecipeRegistration registration) {
        registration.addIngredientInfo(
            new ItemStack(ModItems.ASCENSION_CORE),
            VanillaTypes.ITEM_STACK,
            Component.literal("Ascension Cores are used in an Anvil to upgrade gear levels."),
            Component.literal("Each level grants a random stat from the gear's pool."),
            Component.literal("Core cost: L0->L1 = 1, then baseAscensionCoreCost^currentLevel."),
            Component.literal("XP cost is configurable per target level.")
        );

        registration.addIngredientInfo(
            new ItemStack(ModItems.CHAOS_CORE),
            VanillaTypes.ITEM_STACK,
            Component.literal("Chaos Cores are used in an Anvil to reroll the stats on upgraded gear."),
            Component.literal("The gear must be at least Level 1."),
            Component.literal("The preview is deterministic for the current item, so slot cycling cannot fish for new rolls.")
        );
    }

    private void registerMechanicInfo(IRecipeRegistration registration) {
        registration.addIngredientInfo(
            new ItemStack(ModItems.ASCENSION_CORE),
            VanillaTypes.ITEM_STACK,
            Component.literal("Natural Loot"),
            Component.literal("Generated enchanted gear can auto-receive Ascension levels."),
            Component.literal("Normal loot is capped by naturalLootMaxLevel."),
            Component.literal("Bastion Treasure, End City Treasure, and Ancient City use treasureNaturalLootMaxLevel.")
        );
        registration.addIngredientInfo(
            new ItemStack(ModItems.ASCENSION_CORE),
            VanillaTypes.ITEM_STACK,
            Component.literal("Better Vanilla Mobs"),
            Component.literal("BVM touched mobs use separate drop rates."),
            Component.literal("Formula: base chance + ((stars - 1) * per-star increase)."),
            Component.literal("If names are hidden, rarity is estimated from BVM tags.")
        );
        registration.addIngredientInfo(
            new ItemStack(ModItems.ASCENSION_CORE),
            VanillaTypes.ITEM_STACK,
            Component.literal("Artifacts Compatibility"),
            Component.literal("When Artifacts is installed, artifact items can be leveled."),
            Component.literal("Equipped artifact custom Ascension stats are counted through Artifacts' equipment API."),
            Component.literal("Artifacts use a conservative 2-stat capacity.")
        );
    }

    private void registerStatPoolInfo(IRecipeRegistration registration, String type, List<StatPool.StatDef> pool) {
        List<Component> stats = new ArrayList<>();
        stats.add(Component.literal("== " + type + " Stat Pool ==").withStyle(net.minecraft.ChatFormatting.BOLD));
        for (StatPool.StatDef def : pool) {
            stats.add(Component.literal("L" + def.minLevel() + "+ - " + def.displayName()
                + " (" + StatPool.formatValue(def, def.minAmount())
                + " to " + StatPool.formatValue(def, def.maxAmount()) + ")"));
        }
        registration.addIngredientInfo(new ItemStack(ModItems.ASCENSION_CORE), VanillaTypes.ITEM_STACK, stats.toArray(new Component[0]));
    }

    private static Identifier id(String path) {
        return Identifier.fromNamespaceAndPath("ascensioncores", path);
    }
}
