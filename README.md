# Ascension Cores

An ARPG-style gear progression system for Minecraft. Turn any sword, bow, armor, or tool into a leveled, trait-rolling piece of loot. No new gear tiers, no replacing your favorite enchanted diamond sword. Just deeper, build-craftable progression on the gear you already use.

---

## Why this mod exists

Vanilla gear progression ends at netherite + max enchantments. Once you have it, every diamond/netherite item you find is identical to every other one. There's no reason to compare two diamond swords, no reason to chase a "god roll," no reason for late-game gear hunting.

Most "RPG loot" mods solve this by adding hundreds of new items, custom tiers, custom rarities, and they fight with vanilla, with enchantments, and with every other gear mod you have installed. Ascension Cores takes the opposite approach: vanilla gear stays vanilla. Your diamond sword is still a diamond sword. But now it can be *Honed*, *Empowered*, *Ascendant*, *Mythic*, or *Divine*, each tier earned by spending a currency on the anvil, each tier adding a new randomly-rolled trait from a deep pool of melee, ranged, armor, and tool effects.

The goal: meaningful late-game progression and build crafting, without breaking anything else.

---

## What it does

### Cores
- **Ascension Core**: Use in an anvil to level up gear. Each level adds a new trait slot and powers up existing traits.
- **Chaos Core**: Use in an anvil to reroll the weakest traits on leveled gear. Stack more cores to reroll more at once.

### Gear tiers
Any sword, axe, bow, crossbow, trident, spear, mace, armor piece, shield, or tool can be leveled. Each tier scales the item's traits and unlocks a new one:

| Tier | Name |
|------|------|
| 1 | Honed |
| 2 | Empowered |
| 3 | Ascendant |
| 4 | Mythic |
| 5 | Divine |

### Material capacity
The base material decides how many trait slots an item can hold. Wood/gold = 1, stone/copper/chainmail = 2, iron = 3, diamond = 4, netherite = 5. Upgrading the material in a smithing table automatically fills the new slot with a fresh trait, no need to re-level from scratch.

### Trait ranks
Traits are ordered by power: the first trait scales hardest with item level, the second a bit less, and so on. A *Divine* sword with 5 traits has one "primary" trait (5x scaling), a "secondary" (4x), etc. This rewards re-rolling for ideal trait order and opens build-crafting strategies.

### Enchantment slots
Each tier unlocks one enchantment slot. *Honed* gear can hold 1 enchantment, *Divine* gear can hold 5. The anvil enforces this cap when applying enchanted books, so you must keep leveling to fit a full Sharpness V + Unbreaking III + Mending + Looting III + Sweeping Edge build. Curses don't count against the limit.

### Trait donation
Combine two of the same item (e.g., two leveled diamond swords) in an anvil to transfer a trait from one to the other. Perfect for filling specific slots without relying on random chaos rerolls.

### Trait pool
The mod ships with dozens of traits across four pools (weapon, ranged, armor, tool). Every proc-based trait has its own particle effect and sound, so you can see and hear when your build is firing.

**Damage shapers**
- **Critical Damage**: extra damage on vanilla critical strikes (jump-attacks for melee, fully-drawn bow shots for ranged).
- **Execution Damage**: extra damage when the target is below 35% HP. Snowball low-HP enemies.
- **Ambush Damage**: extra damage when attacking from behind. Rewards positional play.
- **Opening Damage**: extra damage on the first hit (target at near-full HP). Burst openers.
- **Chain Damage** (melee): each consecutive hit on the same target adds bonus damage, up to 5 stacks. Resets if you switch targets.
- **Overcharge Damage** (ranged): extra damage on fully-drawn bow shots.

**On-hit procs**
- **Frostbite** (melee only): chance to apply Slowness II for 3s. Sustained kiting.
- **Venom**: chance to apply Poison II for 5s. Damage over time.
- **Shock**: chance to apply Weakness for 3s. Weakens enemy melee.
- **Wither**: chance to apply Wither for 4s. Black-damage DoT.
- **Pinning** (ranged, full-draw only): chance to root the target in place with Slowness VII for 2s. Perfect setup for follow-up shots.
- **Heal Suppress**: chance to halve all healing the target receives for 4s. Counters regen mobs and PvP healing.

**Offensive utility**
- **Life Steal**: % of damage dealt returns as healing.
- **Reach** (melee): extends your attack reach in blocks.
- **Attack Speed** (melee): faster swing recovery.
- **Armor Shred**: temporarily reduces target's armor on hit.
- **Toughness Shred**: temporarily reduces target's armor toughness.

**Movement and economy**
- **Sprint Speed**: faster sprint movement.
- **Jump Height**: higher jumps.
- **Stealth**: reduces the distance mobs detect you from.
- **Repair Discount**: cheaper anvil repair costs.
- **Experience Bonus**: more XP from kills and breaks.
- **Consuming Speed**: eat and drink potions faster.
- **Stamina**: increases sprint stamina (Puffish Attributes feature).

**Defensive (armor)**
- **Evasion**: small chance to fully dodge incoming hits.
- **Deflection**: chance to reflect incoming projectiles back at the shooter.
- **Effect Resist**: shortens duration of harmful status effects on you.
- **Melee Resistance**: % damage reduction against melee hits (capped at 50%).
- **Natural Regeneration**: heal faster while saturated.
- **Max Health**: increases max HP.
- **Low Health Guard**: damage reduction when you're below 35% HP.
- **Sneak Guard**: damage reduction while sneaking.
- **Standstill Guard**: damage reduction while standing still.
- **Emergency Healing** (Second Wind): when a hit drops you below 30% HP, heal a % of your max HP. 30s cooldown.
- **Tamed Resistance**: reduces damage from your own tamed mobs (rare niche, mostly for accidental wolves).

### Visual feedback
- **Inventory level marker**: a small tier-colored corner badge on every leveled item.
- **Equipped item particle aura**: held items and worn armor emit subtle tier-colored particles.
- **Detailed tooltip**: current trait values, next-level preview, "Awakens at L#" hints for sleeping traits, and live cost-to-level display.

### Loot integration
Ascension Cores and Chaos Cores drop from mobs (configurable rate) and generate in dungeon, fortress, mineshaft, end city, and ancient city chests. Mob drop rates scale with mob difficulty (zombie vs. wither skeleton vs. wither). Optional auto-leveled loot makes vanilla dungeon weapons spawn pre-ascended.

### Commands
- `/ascensioncores reload`: Reloads `config/ascensioncores.properties` live, no restart needed.
- `/ascensioncores level <amount>`: Sets the ascension level of the held item (OP permission).

---

## Mod compatibility

### Required
- **Fabric API**
- **[Puffish Attributes](https://modrinth.com/mod/puffish-attributes)**: backbone for the custom attributes (lifesteal, sprint speed, stamina, etc.) used by many traits.

### Recommended (integrates automatically when present)
- **[JEI](https://modrinth.com/mod/jei)**: recipe + item lookup for cores.
- **[Progression Reborn](https://modrinth.com/mod/progression-reborn)**: tier-aware material capacity for its custom gear progression.
- **[Artifacts](https://modrinth.com/mod/artifacts)**: equipped artifacts can roll traits and contribute to weapon/armor procs.
- **[Farmer's Delight Refabricated](https://modrinth.com/mod/farmers-delight-refabricated)**: knives recognized as tools.
- **[More Delight](https://modrinth.com/mod/more-delight)**: tools recognized.

### Plays nicely with
- **Enchantments**: Trait slots and enchantment slots are independent. Enchant your Divine sword normally; the anvil enforces an enchantment cap equal to the item's tier.
- **Other gear mods**: Ascension Cores doesn't add or replace gear; it modifies existing items. Most modded weapons/armor are auto-detected via durability and attribute heuristics.
- **Better Vanilla Mobs**, recipe overhauls, biome mods, etc.: no known conflicts.

---

## Configuration

All settings live in `config/ascensioncores.properties` and reload live with `/ascensioncores reload`:

- Max item level (default 5)
- XP and core costs per tier
- Mob drop rates (chest loot, basic mobs, mid-tier mobs, boss mobs)
- Per-pool trait blacklist (disable specific traits per weapon / ranged / armor / tool pool)
- Inventory level marker toggle
- Anvil feedback sound toggle

---

## Wiki

Recipes, full trait list, drop tables, and configuration reference live on the wiki (link coming soon).

---

## License

MIT.
