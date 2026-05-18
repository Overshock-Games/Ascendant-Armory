package com.ascensioncores.compat;

import com.ascensioncores.gear.GearHelper;
import com.ascensioncores.gear.StatPool;
import com.ascensioncores.item.ModItems;
import mezz.jei.api.IModPlugin;
import mezz.jei.api.constants.RecipeTypes;
import mezz.jei.api.constants.VanillaTypes;
import mezz.jei.api.recipe.vanilla.IJeiAnvilRecipe;
import mezz.jei.api.recipe.vanilla.IVanillaRecipeFactory;
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
        List<IJeiAnvilRecipe> anvilRecipes = new ArrayList<>();

        // Example 1: Upgrade Wood Sword L0 -> L1
        ItemStack wood0 = new ItemStack(Items.WOODEN_SWORD);
        ItemStack wood1 = wood0.copy();
        GearHelper.setLevel(wood1, 1);
        anvilRecipes.add(factory.createAnvilRecipe(
            List.of(wood0),
            List.of(new ItemStack(ModItems.ASCENSION_CORE, GearHelper.getAscensionCoreCost(0))),
            List.of(wood1),
            Identifier.fromNamespaceAndPath("ascensioncores", "jei_anvil_upgrade_wood")
        ));

        // Example 2: Upgrade Diamond Sword L1 -> L2
        ItemStack dia1 = new ItemStack(Items.DIAMOND_SWORD);
        GearHelper.setLevel(dia1, 1);
        ItemStack dia2 = dia1.copy();
        GearHelper.setLevel(dia2, 2);
        anvilRecipes.add(factory.createAnvilRecipe(
            List.of(dia1),
            List.of(new ItemStack(ModItems.ASCENSION_CORE, GearHelper.getAscensionCoreCost(1))),
            List.of(dia2),
            Identifier.fromNamespaceAndPath("ascensioncores", "jei_anvil_upgrade_diamond")
        ));

        // Example 3: Reroll Diamond Sword L2
        ItemStack rerollCore = new ItemStack(ModItems.CHAOS_CORE);
        anvilRecipes.add(factory.createAnvilRecipe(
            List.of(dia2),
            List.of(rerollCore),
            List.of(dia2.copy()),
            Identifier.fromNamespaceAndPath("ascensioncores", "jei_anvil_reroll_diamond")
        ));

        registration.addRecipes(RecipeTypes.ANVIL, anvilRecipes);

        // Core Usage Information
        registration.addIngredientInfo(
            new ItemStack(ModItems.ASCENSION_CORE),
            VanillaTypes.ITEM_STACK,
            Component.literal("Ascension Cores are used in an Anvil to upgrade gear levels (up to Level 4)."),
            Component.literal("Each level grants a random stat from the gear's pool."),
            Component.literal("Cost scales with the current level of the item.")
        );

        registration.addIngredientInfo(
            new ItemStack(ModItems.CHAOS_CORE),
            VanillaTypes.ITEM_STACK,
            Component.literal("Chaos Cores are used in an Anvil to reroll the stats on upgraded gear."),
            Component.literal("The gear must be at least Level 1.")
        );

        // Stat Pool Information (Appears as additional info pages on the Ascension Core)
        registerStatPoolInfo(registration, "Weapon", StatPool.WEAPON_POOL);
        registerStatPoolInfo(registration, "Armor", StatPool.ARMOR_POOL);
        registerStatPoolInfo(registration, "Tool", StatPool.TOOL_POOL);
    }

    private void registerStatPoolInfo(IRecipeRegistration registration, String type, List<StatPool.StatDef> pool) {
        List<Component> stats = new ArrayList<>();
        stats.add(Component.literal("== " + type + " Stat Pool ==").withStyle(net.minecraft.ChatFormatting.BOLD));
        for (StatPool.StatDef def : pool) {
            stats.add(Component.literal("• " + def.displayName() + " (" + StatPool.formatValue(def, def.minAmount()) + " to " + StatPool.formatValue(def, def.maxAmount()) + ")"));
        }
        registration.addIngredientInfo(new ItemStack(ModItems.ASCENSION_CORE), VanillaTypes.ITEM_STACK, stats.toArray(new Component[0]));
    }
}