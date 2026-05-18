# Ascension Cores — Handoff

Pick this up next session. Mod is a Fabric mod for MC 26.1.2, JDK 26, using Pufferfish Attributes. Target dir: `c:\Git\Ascension Cores`. Build with `.\gradlew.bat build`. Test with `.\gradlew.bat runClient`. Live config at `run/config/ascensioncores.properties`.

## Current state — known to work

- ARPG gear leveling (L0–L4) via Ascension Cores + Chaos Cores in an anvil
- Auto-leveling for naturally-generated chest loot based on non-curse enchant count ([mixin/LootTableMixin.java](src/main/java/com/ascensioncores/mixin/LootTableMixin.java))
- Cores drop from chests (dungeons, strongholds, temples, mansions, trial chambers, BVM villages, etc.) and from hostile mobs
- `/ascensioncores reload | level get | level set N | reroll | givecore upgrade N | givecore chaos N`
- Tooltip with capacity (`N/M stats`), next-level preview, colored level tier name (Unawakened → Mythic), enchant slot count
- Inventory marker: single colored corner per leveled item (white/cyan/magenta/gold)
- Anvil mixin: upgrade with cores, reroll with chaos core (deterministic seed so re-inserting shows same preview), enchant cap blocks adding past `level` non-curse enchants
- Chest loot avoids double-dipping: Bastion Treasure, End City Treasure, and Ancient City are excluded from the common core chest set and use dedicated pools
- Ascension never sets or removes enchantment glint override; vanilla enchantment visuals stay untouched
- BetterVanillaMobs integration (touched mobs override mob drop rates; displayed rarity stars/skulls/rank names scale between regular and alpha rates)
- Progression Reborn rose-gear compat (tier 2 capacity)
- Farmer's Delight Refabricated compat for knives and skillet (`farmersdelight` optional)
- More Delight compat for wooden and stone knives (`moredelight` optional)
- Generic modded gear capacity fallback: after exact vanilla/compat mappings, `GearHelper` checks material tokens in the item ID, then infers capacity from durability and base attack/armor attributes. Damageable modded IDs ending in `bow`, `_bow`, `crossbow`, `_crossbow`, `longbow`, or `shortbow` are treated as weapons.
- Custom `AscensionConfigChanceCondition` makes `/ascensioncores reload` apply chest loot rate changes live without `/reload`
- Upgrade anvil XP costs are configurable per target level (`upgradeXpCostLevel1` through `upgradeXpCostLevel4`)
- Natural enchanted loot auto-leveling is capped separately for normal loot (`naturalLootMaxLevel`, default 2) and treasure loot (`treasureNaturalLootMaxLevel`, default 4)
- Stat pools have unlock bands via `StatDef.minLevel`; early levels roll simpler/common stats, while higher levels unlock stronger/custom stats

## Key file gotchas (don't trip on these)

- **`mixin/AnvilMenuMixin.java`** must use `@At("RETURN")` not TAIL (vanilla createResult has early returns).
- **`mixin/ItemCombinerMenuAccessor.java`** exposes `inputSlots`/`resultSlots`/`player` from parent class — `AnvilMenuMixin` can't `@Shadow` parent fields directly. Same gotcha: `slotsChanged` is on the parent so can't be `@Inject`-ed into `AnvilMenuMixin` (use `createResult` which fires on every slot change).
- **`item/ModItems.java`** — MC 26 requires `.setId(ResourceKey)` on `Item.Properties` before `new Item()`.
- **`AscensionCommonMod`** is the `main` entrypoint and registers components, items, loot conditions, handlers, command. There is no longer a `server` entrypoint (it was redundant).
- **Recipe JSON** ingredients are plain string IDs (`"minecraft:flint"`), not `{"item":"..."}` objects.
- **`GearHelper.rebuildAttributes`** sets `TOOLTIP_DISPLAY.withHidden(ATTRIBUTE_MODIFIERS, false)` and adds rolled stats with `ItemAttributeModifiers.Display.hidden()` — so vanilla attrs show in tooltip but our rolled stats don't show in the vanilla list (avoiding double display).
- **MC 26 API renames**: `Entity.getTags()` → `Entity.entityTags()`. `LootItemConditionType` no longer wraps the codec — register the `MapCodec` directly into `BuiltInRegistries.LOOT_CONDITION_TYPE`.
- **MC 26 asset requirement**: each item needs `assets/<ns>/items/<name>.json` (item model definition) pointing to the model in `models/item/`. Without it, item renders as missing texture.

## Remaining work / audit status

### F1 — Grindstone salvage
Implemented in [mixin/GrindstoneMenuMixin.java](src/main/java/com/ascensioncores/mixin/GrindstoneMenuMixin.java). Keep the current behavior: grindstone result is the same item downgraded by one level, and taking it refunds half of the previous level cost to inventory. Do not change this to core-only salvage.

### F4 — Per-level sound escalation
Done in [mixin/AnvilMenuMixin.java](src/main/java/com/ascensioncores/mixin/AnvilMenuMixin.java).

### F6 — `/ascensioncores info` command
Done in [command/AscensionCoresCommand.java](src/main/java/com/ascensioncores/command/AscensionCoresCommand.java).

### F7 — Recipe Viewer Integration
JEI integration is present via [compat/JeiPlugin.java](src/main/java/com/ascensioncores/compat/JeiPlugin.java) and `jei_mod_plugin` in `fabric.mod.json`. Do not add EMI integration unless the user explicitly reverses this decision.

### Validation still worth doing

- Run `.\gradlew.bat runClient` and smoke-test anvil upgrade/reroll, grindstone salvage, `/ascensioncores info`, and JEI pages in-game.

## Other audit items not yet addressed

- **Bal1** (tier-0 auto-leveled "Mythic" loot weirdness): the user clarified this is fine. Smite V (one enchant) maps to L1, which is correct. Skipped.
- **Bal2** (enchant slot generous late-game): left as-is per user choice.
- **Bal6** (particle aura): user does not want particle aura. Keep [event/ParticleAuraHandler.java](src/main/java/com/ascensioncores/event/ParticleAuraHandler.java) unregistered, or remove it later if cleaning dead code.

## Recent design decisions

- Curses (`EnchantmentTags.CURSE`) are excluded from enchant counts everywhere — both auto-leveling and the anvil cap. `GearHelper.countNonCurseEnchantments(stack)` is the single source of truth.
- BVM rate logic uses **full replace** (Option A) for both upgrade cores and chaos cores. BVM config is per-star: `chance = base + ((stars - 1) * perStar)`, with alpha-tagged mobs treated as 5-star. If BVM custom names are disabled, `BetterVanillaMobsCompat` falls back to a conservative estimate from persistent BVM affinity/skill tags.
- XP cost for anvil upgrades is config-backed in [AscensionCoresConfig](src/main/java/com/ascensioncores/AscensionCoresConfig.java). Reroll currently costs `level` XP.
- Normal generated loot is post-processed by [mixin/LootTableMixin.java](src/main/java/com/ascensioncores/mixin/LootTableMixin.java) and capped by `naturalLootMaxLevel`. Treasure tables apply [loot/AscensionAutoLevelFunction.java](src/main/java/com/ascensioncores/loot/AscensionAutoLevelFunction.java) first so they can use `treasureNaturalLootMaxLevel`.
- Chest loot rates pull from config live via custom `AscensionConfigChanceCondition`. Mob drop rates are evaluated per-kill from config directly.
- No particle aura, no EMI integration, and keep current grindstone downgrade+refund salvage behavior.
- Do not use `DataComponents.ENCHANTMENT_GLINT_OVERRIDE` for Ascension visuals; it conflicts with enchanted items. Use tooltip and inventory marker only.
- Material capacity order is intentional: exact vanilla tiers, exact compat classes, material-name tokens in the registry path, then conservative durability/base-attribute inference. Keep exact compat for weird items whose material cannot be inferred cleanly.

## Quick reference: file map

- Entry points: `AscensionCommonMod` (main), `AscensionClientMod` (client)
- Config: `AscensionCoresConfig.java` (defaults + parser + `getChance()` for loot)
- Core gear logic: `gear/GearHelper.java`, `gear/StatPool.java`, `gear/RolledStat.java`
- Items + components: `item/ModItems.java`, `component/ModComponents.java`
- Anvil/enchant: `mixin/AnvilMenuMixin.java`, `mixin/EnchantmentMenuMixin.java`, `mixin/ItemCombinerMenuAccessor.java`
- Combat: `mixin/PlayerAttackMixin.java`, `mixin/LivingEntityDamageMixin.java`
- Loot: `event/LootHandler.java`, `mixin/LootTableMixin.java`, `loot/AscensionConfigChanceCondition.java`, `loot/ModLootConditions.java`
- Drops: `event/EntityDeathHandler.java`
- UI: `event/TooltipHandler.java`, `event/ItemLevelOverlayHandler.java`
- Compat: `compat/BetterVanillaMobsCompat.java`, `compat/FarmersDelightCompat.java`, `compat/MoreDelightCompat.java`, `compat/ProgressionRebornCompat.java`
- Command: `command/AscensionCoresCommand.java`
