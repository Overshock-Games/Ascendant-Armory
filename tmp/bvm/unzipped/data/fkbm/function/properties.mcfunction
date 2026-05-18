### Better Vanilla Mobs Datapack
###
### Developped by FunkyToc
### With love
### And a big amount of time



## Global

# Base difficulty of the overhauled mobs of the pack
# Default: 1
# 0: peacefull (disable datapack)
# 1: easy
# 2: normal
# 3: hard
# 4: auto (same as world difficulty)
execute unless score BaseDifficulty fkbm.options matches 0.. run scoreboard players set BaseDifficulty fkbm.options 1

# Individual difficulty (set it up in the option menu, per individual player)
# Default: null
# 0: no mob modification
# 1: easy
# 2: normal
# 3: hard
# null: auto (same as base difficulty)

# Loop frequency to update mob's statistics (seconds) (low value use more CPU)
# Default: 5
# Range: 1 - 30
execute unless score MobModifyFrequency fkbm.options matches 0.. run scoreboard players set MobModifyFrequency fkbm.options 5

# Percentage of mobs to enhance (high value use more CPU)
# Default: 100
# Range: 0 - 100
execute unless score MobModifyPercent fkbm.options matches 0.. run scoreboard players set MobModifyPercent fkbm.options 100

# Block radius around players to enhance mobs (high value use more CPU)
# Default: 80
# Range: 32 - 256
execute unless score MobModifyRadius fkbm.options matches 0.. run scoreboard players set MobModifyRadius fkbm.options 80

# Mob count to enhance every [MobModifyFrequency] (per player, sort nearest) (high value use more CPU)
# Default: 8
# Range: 1 - 99
execute unless score MobModifyCount fkbm.options matches 0.. run scoreboard players set MobModifyCount fkbm.options 8

# Block radius around players to enable mob's skills (high value use more CPU)
# Default: 25
# Range: 8 - 32
execute unless score MobLoopRadius fkbm.options matches 0.. run scoreboard players set MobLoopRadius fkbm.options 25

# Mob count to enable skill every [MobGameplayLatency] (per player, sort nearest) (high value use more CPU)
# Default: 8
# Range: 1 - 32
execute unless score MobLoopCount fkbm.options matches 0.. run scoreboard players set MobLoopCount fkbm.options 8

# Loop frequency to update baby's statistics into adult ones (seconds) (low value use more CPU)
# Default: 120
# Range: 1 - 300
execute unless score BabyMobModifyFrequency fkbm.options matches 0.. run scoreboard players set BabyMobModifyFrequency fkbm.options 120

# Loop frequency for mob's behavior and global gameplay reactivity (seconds) (low value use more CPU)
# Default: 1
# Range: 1 - 10
execute unless score MobGameplayLatency fkbm.options matches 0.. run scoreboard players set MobGameplayLatency fkbm.options 1

# Enable mob griefing for mob's skills
# Default: 3
# 0: disabled (disable a few skills)
# 1: soft (allows automaticaly removed griefings)
# 2: full (no restriction)
# 3: auto (copy gamerule, set to 1 or 2)
execute unless score MobGriefing.Enable fkbm.options matches 0.. run scoreboard players set MobGriefing.Enable fkbm.options 3


## Affinity buffs

# Base stat buff system for every monster
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Affinity fkbm.options matches 0.. run scoreboard players set Affinity fkbm.options 1

# Base chance for each mob to become an ALPHA, getting every affinity buffs (%)
# Default: 3
# Range: 0 - 100
# 0: disabled
execute unless score Affinity.Alpha.Chance fkbm.options matches 0.. run scoreboard players set Affinity.Alpha.Chance fkbm.options 3

# Weight of the no buff chance (if not ALPHA)
# Default: 20
# 0: disabled
execute unless score Affinity.Weight.Weak fkbm.options matches 0.. run scoreboard players set Affinity.Weight.Weak fkbm.options 70

# Weight of the Health (health point) affinity buff (if not ALPHA)
# Default: 20
# 0: disabled
execute unless score Affinity.Weight.Health fkbm.options matches 0.. run scoreboard players set Affinity.Weight.Health fkbm.options 8

# Weight of the Resistant (armor) affinity buff (if not ALPHA)
# Default: 20
# 0: disabled
execute unless score Affinity.Weight.Resistant fkbm.options matches 0.. run scoreboard players set Affinity.Weight.Resistant fkbm.options 6

# Weight of the Heavy (knockback) affinity buff (if not ALPHA)
# Default: 20
# 0: disabled
execute unless score Affinity.Weight.Heavy fkbm.options matches 0.. run scoreboard players set Affinity.Weight.Heavy fkbm.options 6

# Weight of the Strong (damage) affinity buff (if not ALPHA)
# Default: 20
# 0: disabled
execute unless score Affinity.Weight.Strong fkbm.options matches 0.. run scoreboard players set Affinity.Weight.Strong fkbm.options 5

# Weight of the Fast (speed) affinity buff (if not ALPHA)
# Default: 20
# 0: disabled
execute unless score Affinity.Weight.Fast fkbm.options matches 0.. run scoreboard players set Affinity.Weight.Fast fkbm.options 5


## Custom Names

# Enable the custom name system for touched mobs
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Cname fkbm.options matches 0.. run scoreboard players set Cname fkbm.options 1

# Set the custom name to "always visible"
# Default: 0
# 0: disabled
# 1: enabled
execute unless score Cname.visible fkbm.options matches 0.. run scoreboard players set Cname.visible fkbm.options 0


# Display the entity Type in the name
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Cname.type fkbm.options matches 0.. run scoreboard players set Cname.type fkbm.options 1

# Color of the Type in the name
execute unless data storage fkbm:data cname.type.color run data modify storage fkbm:data cname.type.color set value "white"

# Prefix/Postfix string added to the Type in the name
execute unless data storage fkbm:data cname.type.prefix run data modify storage fkbm:data cname.type.prefix set value '{"text":"","color":"gray"}'
execute unless data storage fkbm:data cname.type.postfix run data modify storage fkbm:data cname.type.postfix set value '{"text":"","color":"gray"}'


# Display the Affinity in the name
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Cname.affinity fkbm.options matches 0.. run scoreboard players set Cname.affinity fkbm.options 1

# Prefix string added to the Affinity in the name
execute unless data storage fkbm:data cname.affinity.prefix run data modify storage fkbm:data cname.affinity.prefix set value '{"text":"","color":"gray"}'
execute unless data storage fkbm:data cname.affinity.postfix run data modify storage fkbm:data cname.affinity.postfix set value '{"text":" ","color":"gray"}'

# affinity ranks
execute unless data storage fkbm:data cname.affinity.0 run data modify storage fkbm:data cname.affinity.0 set value '{"text":"Weak","color":"white"}'
execute unless data storage fkbm:data cname.affinity.1 run data modify storage fkbm:data cname.affinity.1 set value '{"text":"Alpha","color":"white"}'
execute unless data storage fkbm:data cname.affinity.2 run data modify storage fkbm:data cname.affinity.2 set value '{"text":"Healthy","color":"white"}'
execute unless data storage fkbm:data cname.affinity.3 run data modify storage fkbm:data cname.affinity.3 set value '{"text":"Resistant","color":"white"}'
execute unless data storage fkbm:data cname.affinity.4 run data modify storage fkbm:data cname.affinity.4 set value '{"text":"Heavy","color":"white"}'
execute unless data storage fkbm:data cname.affinity.5 run data modify storage fkbm:data cname.affinity.5 set value '{"text":"Strong","color":"white"}'
execute unless data storage fkbm:data cname.affinity.6 run data modify storage fkbm:data cname.affinity.6 set value '{"text":"Fast","color":"white"}'


# Display the Rarity in the name
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Cname.rarity fkbm.options matches 0.. run scoreboard players set Cname.rarity fkbm.options 1

# Display style for the Rarity in the name
# Default: 2
# 1: ranks
# 2: stars
# 3: skulls
execute unless score Cname.rarity.style fkbm.options matches 0.. run scoreboard players set Cname.rarity.style fkbm.options 2

# Prefix/Postfix string added to the Rarity in the name
execute unless data storage fkbm:data cname.rarity.prefix run data modify storage fkbm:data cname.rarity.prefix set value '{"text":"[","color":"gray"}'
execute unless data storage fkbm:data cname.rarity.postfix run data modify storage fkbm:data cname.rarity.postfix set value '{"text":"] ","color":"gray"}'

# Rarity ranks
execute unless data storage fkbm:data cname.rarity.11 run data modify storage fkbm:data cname.rarity.11 set value '{"text":"Common","color":"green"}'
execute unless data storage fkbm:data cname.rarity.12 run data modify storage fkbm:data cname.rarity.12 set value '{"text":"Uncommon","color":"aqua"}'
execute unless data storage fkbm:data cname.rarity.13 run data modify storage fkbm:data cname.rarity.13 set value '{"text":"Rare","color":"light_purple"}'
execute unless data storage fkbm:data cname.rarity.14 run data modify storage fkbm:data cname.rarity.14 set value '{"text":"Epic","color":"yellow"}'
execute unless data storage fkbm:data cname.rarity.15 run data modify storage fkbm:data cname.rarity.15 set value '{"text":"Legendary","color":"#ff5145"}'

execute unless data storage fkbm:data cname.rarity.21 run data modify storage fkbm:data cname.rarity.21 set value '{"text":"★☆☆☆☆","color":"green"}'
execute unless data storage fkbm:data cname.rarity.22 run data modify storage fkbm:data cname.rarity.22 set value '{"text":"★★☆☆☆","color":"aqua"}'
execute unless data storage fkbm:data cname.rarity.23 run data modify storage fkbm:data cname.rarity.23 set value '{"text":"★★★☆☆","color":"light_purple"}'
execute unless data storage fkbm:data cname.rarity.24 run data modify storage fkbm:data cname.rarity.24 set value '{"text":"★★★★☆","color":"yellow"}'
execute unless data storage fkbm:data cname.rarity.25 run data modify storage fkbm:data cname.rarity.25 set value '{"text":"★★★★★","color":"#ff5145"}'

execute unless data storage fkbm:data cname.rarity.31 run data modify storage fkbm:data cname.rarity.31 set value '{"text":"☠∙∙∙∙","color":"green"}'
execute unless data storage fkbm:data cname.rarity.32 run data modify storage fkbm:data cname.rarity.32 set value '{"text":"☠☠∙∙∙","color":"aqua"}'
execute unless data storage fkbm:data cname.rarity.33 run data modify storage fkbm:data cname.rarity.33 set value '{"text":"☠☠☠∙∙","color":"light_purple"}'
execute unless data storage fkbm:data cname.rarity.34 run data modify storage fkbm:data cname.rarity.34 set value '{"text":"☠☠☠☠∙","color":"yellow"}'
execute unless data storage fkbm:data cname.rarity.35 run data modify storage fkbm:data cname.rarity.35 set value '{"text":"☠☠☠☠☠","color":"#ff5145"}'


# Display the nightmare level in the name
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Cname.nightmare fkbm.options matches 0.. run scoreboard players set Cname.nightmare fkbm.options 1

# Display style for the nightmare
# Default: 1
# 1: skull
# 2: moon
# 3: star
# 4: rank
execute unless score Cname.nightmare.style fkbm.options matches 0.. run scoreboard players set Cname.nightmare.style fkbm.options 1

# Prefix/Postfix string added to the nightmare in the name
execute unless data storage fkbm:data cname.nightmare.prefix run data modify storage fkbm:data cname.nightmare.prefix set value '{"text":" (","color":"gray"}'
execute unless data storage fkbm:data cname.nightmare.postfix run data modify storage fkbm:data cname.nightmare.postfix set value '{"text":") ","color":"gray"}'

# Nightmare level color
execute unless data storage fkbm:data cname.nightmare.color run data modify storage fkbm:data cname.nightmare.color set value 'gray'

# Nightmare icon
execute unless data storage fkbm:data cname.nightmare.1 run data modify storage fkbm:data cname.nightmare.1 set value '{"text":"☠","color":"gray"}'
execute unless data storage fkbm:data cname.nightmare.2 run data modify storage fkbm:data cname.nightmare.2 set value '{"text":"☽","color":"gray"}'
execute unless data storage fkbm:data cname.nightmare.3 run data modify storage fkbm:data cname.nightmare.3 set value '{"text":"☆","color":"gray"}'
execute unless data storage fkbm:data cname.nightmare.4 run data modify storage fkbm:data cname.nightmare.4 set value '{"text":"nightmare ","color":"gray"}'


## Nightmare difficulty

# Base Nightmare level difficulty. Each level apply a greater buff on mobs.
# Default: 0
# Range: 0 - 100
# 0: disabled
execute unless score NightmareBaseLvl fkbm.options matches 0.. run scoreboard players set NightmareBaseLvl fkbm.options 0

# Individual Nightmare level (overcharge base nightmare level)
# Default: null
# Range: 0 - 100

# Auto individual nigthmare level up
# Default: 0
# 0: do not level up nigthmare difficulty
# 1: allow auto difficulty level up over time/kill
execute unless score NightmareAutoLvlUp fkbm.options matches 0.. run scoreboard players set NightmareAutoLvlUp fkbm.options 0

# Restrict max nigthmare level
# Default: 100
# Range: 0 - 100
# 0: disable nightmare multiplier
# 100: no nightmare restriction
execute unless score NightmareMaxLvl fkbm.options matches 0.. run scoreboard players set NightmareMaxLvl fkbm.options 100

# Amount of xp added to the player's nightmare level every minute (%)
# Default: 1
# 0: disabled
# Range: 0 - 100
execute unless score NightmareLvlUpTimer fkbm.options matches 0.. run scoreboard players set NightmareLvlUpTimer fkbm.options 1

# Amount of xp added to the player's nightmare level every every mob kill (%)
# Default: 1
# 0: disabled
# Range: 0 - 100
execute unless score NightmareLvlUpKill fkbm.options matches 0.. run scoreboard players set NightmareLvlUpKill fkbm.options 1

# Display nigthmare level on change
# Default: 1
# 0: disabled
# 1: auto
# 1: chat
# 2: actionbar
# 3: subtitle
execute unless score NightmareLvlDisplay fkbm.options matches 0.. run scoreboard players set NightmareLvlDisplay fkbm.options 1

# Display a sound on nightmare level up
# Default: 1
# 0: disabled
# 1: enabled
execute unless score NightmareLvlUpSound fkbm.options matches 0.. run scoreboard players set NightmareLvlUpSound fkbm.options 1

# Amount (%) of health added to the mobs, per nightmare level (% per level)
# Default: 5
# 0: disabled
# 5: +5%/lvl (nightmare lvl 20 = +100% health)
# Range: 0 - 20
execute unless score Nightmare.MobBuff.Health fkbm.options matches 0.. run scoreboard players set Nightmare.MobBuff.Health fkbm.options 5

# Amount (%) of damage added to the mobs, per nightmare level (% per level)
# Default: 2
# 0: disabled
# 2: +2%/lvl (nightmare lvl 20 = +40% damage)
# Range: 0 - 20
execute unless score Nightmare.MobBuff.Damage fkbm.options matches 0.. run scoreboard players set Nightmare.MobBuff.Damage fkbm.options 2

# Amount (per /1000) of speed added to the mobs, per nightmare level (/1000 per level)
# Default: 2
# 0: disabled
# 2: +2%/lvl (nightmare lvl 20 = +4% speed)
# Range: 0 - 20
execute unless score Nightmare.MobBuff.Speed fkbm.options matches 0.. run scoreboard players set Nightmare.MobBuff.Speed fkbm.options 2


## Dimensions

# Modify mobs in the Overworld
# Default: 1
# 0: disabled
# 1: enabled
execute unless score OverTouch fkbm.options matches 0.. run scoreboard players set OverTouch fkbm.options 1

# Modify mobs in the Nether
# Default: 1
# 0: disabled
# 1: enabled
execute unless score NetherTouch fkbm.options matches 0.. run scoreboard players set NetherTouch fkbm.options 1

# Modify mobs in the End
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EndTouch fkbm.options matches 0.. run scoreboard players set EndTouch fkbm.options 1

# Allow mobs to use skills in the Overworld
# Default: 1
# 0: disabled
# 1: enabled
execute unless score OverLoop fkbm.options matches 0.. run scoreboard players set OverLoop fkbm.options 1

# Allow mobs to use skills in the Nether
# Default: 1
# 0: disabled
# 1: enabled
execute unless score NetherLoop fkbm.options matches 0.. run scoreboard players set NetherLoop fkbm.options 1

# Allow mobs to use skills in the End
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EndLoop fkbm.options matches 0.. run scoreboard players set EndLoop fkbm.options 1


## FX

# Play some sounds on events
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Sounds fkbm.options matches 0.. run scoreboard players set Sounds fkbm.options 1


## TOTEM

# Enable the Totem system preventing mobs to be modified in a certain range
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Totem fkbm.options matches 0.. run scoreboard players set Totem fkbm.options 1

# Distance of modification lock, from the totem (block)
# Default: 64
# Range: 0 - 256
execute unless score Totem.Range fkbm.options matches 0.. run scoreboard players set Totem.Range fkbm.options 64

# Display some particles at the limit of the area of effect (cosmetic)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Totem.Particle.Show fkbm.options matches 0.. run scoreboard players set Totem.Particle.Show fkbm.options 1

# Particle name used to display the limit (string)
# Default: "minecraft:soul"
# list: see official particles using /particle
execute unless data storage fkbm:data totem.particle run data modify storage fkbm:data totem.particle set value 'minecraft:soul'

# Give totem recipe automaticly to all player
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Totem.GiveRecipe fkbm.options matches 0.. run scoreboard players set Totem.GiveRecipe fkbm.options 1

# Rebuild data of placed totem (this will insert the Lore again, but might print a duplicate error in the console, with no incidence on the game)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Totem.AutoRebuildData fkbm.options matches 0.. run scoreboard players set Totem.AutoRebuildData fkbm.options 1


### GLOBAL

# Allow player to recover in ground arrows
# Default: 0
# 0: disabled
# 1: enabled
execute unless score EntityArrowPickup fkbm.options matches 0.. run scoreboard players set EntityArrowPickup fkbm.options 0

# Prevent mob modification in certain structures
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PreventModif fkbm.options matches 0.. run scoreboard players set PreventModif fkbm.options 1

# Prevent mob modification in AncientCity
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.AncientCity fkbm.options matches 0.. run scoreboard players set PreventModif.AncientCity fkbm.options 0

# Prevent mob modification in BastionRemnant
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.BastionRemnant fkbm.options matches 0.. run scoreboard players set PreventModif.BastionRemnant fkbm.options 0

# Prevent mob modification in Fortress
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.Fortress fkbm.options matches 0.. run scoreboard players set PreventModif.Fortress fkbm.options 0

# Prevent mob modification in Mansion
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.Mansion fkbm.options matches 0.. run scoreboard players set PreventModif.Mansion fkbm.options 0

# Prevent mob modification in Mineshaft
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.Mineshaft fkbm.options matches 0.. run scoreboard players set PreventModif.Mineshaft fkbm.options 0

# Prevent mob modification in Monument
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.Monument fkbm.options matches 0.. run scoreboard players set PreventModif.Monument fkbm.options 0

# Prevent mob modification in Stronghold
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.Stronghold fkbm.options matches 0.. run scoreboard players set PreventModif.Stronghold fkbm.options 0

# Prevent mob modification in TrialChambers
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PreventModif.TrialChambers fkbm.options matches 0.. run scoreboard players set PreventModif.TrialChambers fkbm.options 1

# Prevent mob modification in Village
# Default: 0
# 0: disabled
# 1: enabled
execute unless score PreventModif.Village fkbm.options matches 0.. run scoreboard players set PreventModif.Village fkbm.options 0



### MOBS


## BOGGED

# Enable Bogged modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedTouch fkbm.options matches 0.. run scoreboard players set BoggedTouch fkbm.options 1

# Bogged replace skeleton in forests and jungles (in %)
# Default: 10
# 0: disabled
# Range: 0 - 100
execute unless score BoggedInForest fkbm.options matches 0.. run scoreboard players set BoggedInForest fkbm.options 10

# Some boggeds may break torches
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedBreakTorch fkbm.options matches 0.. run scoreboard players set BoggedBreakTorch fkbm.options 1

# Some boggeds may be immmune to daylight
# Default: 1
# 0: disabled
# 1: stone button helmet
# 2: fire resistance effect
execute unless score BoggedFireResistance fkbm.options matches 0.. run scoreboard players set BoggedFireResistance fkbm.options 1

# Some boggeds get infested and might spawn silverfish on damage
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedInfested fkbm.options matches 0.. run scoreboard players set BoggedInfested fkbm.options 1

# Some boggeds spread poison on damage
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedPoisonLeak fkbm.options matches 0.. run scoreboard players set BoggedPoisonLeak fkbm.options 1

# Some boggeds can summon baby skeletons
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedSummoner fkbm.options matches 0.. run scoreboard players set BoggedSummoner fkbm.options 1

# Cooldown of the summon spell (seconds)
# Default: 20
# Range : 0 - 999
execute unless score BoggedSummonCd fkbm.options matches 0.. run scoreboard players set BoggedSummonCd fkbm.options 20

# Some boggeds may fight with swords
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedSword fkbm.options matches 0.. run scoreboard players set BoggedSword fkbm.options 1

# Some Boggeds may fight with spears
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedSpear fkbm.options matches 0.. run scoreboard players set BoggedSpear fkbm.options 1

# Some boggeds may have armors
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedArmored fkbm.options matches 0.. run scoreboard players set BoggedArmored fkbm.options 1

# Some boggeds may block arrows with a shield
# Default: 1
# 0: disabled
# 1: enabled
execute unless score BoggedShield fkbm.options matches 0.. run scoreboard players set BoggedShield fkbm.options 1

# Blocking arrows skill's cooldown (seconds)
# Default: 1
# Range: 0 - 99
execute unless score BoggedArrowBlockCd fkbm.options matches 0.. run scoreboard players set BoggedArrowBlockCd fkbm.options 1

# Allow some Boggeds to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Bogged.Alpha fkbm.options matches 0.. run scoreboard players set Bogged.Alpha fkbm.options 1


## CAVE SPIDER

# Enable Cave spider modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CavespiderTouch fkbm.options matches 0.. run scoreboard players set CavespiderTouch fkbm.options 1

# Allow Cave spiders to stick to the ceiling (mess up with the name system)
# Default: 0
# 0: disabled
# 1: enabled
execute unless score CavespiderCeiling fkbm.options matches 0.. run scoreboard players set CavespiderCeiling fkbm.options 0

# Cave spiders bites give quick nausea and slowness effects
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CavespiderNausea fkbm.options matches 0.. run scoreboard players set CavespiderNausea fkbm.options 1

# Allow some Cavespiders to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CaveSpider.Alpha fkbm.options matches 0.. run scoreboard players set CaveSpider.Alpha fkbm.options 1


## CREEPER

# Enable Creeper modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CreeperTouch fkbm.options matches 0.. run scoreboard players set CreeperTouch fkbm.options 1

# Gives some creepers a sound bait ability
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CreeperBait fkbm.options matches 0.. run scoreboard players set CreeperBait fkbm.options 1

# Gives some creepers a baby size (<1 block)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CreeperBaby fkbm.options matches 0.. run scoreboard players set CreeperBaby fkbm.options 1

# Randomize the fuse timer of creepers
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CreeperRandomFuse fkbm.options matches 0.. run scoreboard players set CreeperRandomFuse fkbm.options 1

# Randomize the explosion radius of creepers
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CreeperRandomExplosionRadius fkbm.options matches 0.. run scoreboard players set CreeperRandomExplosionRadius fkbm.options 1

# Some creepers may explode instantly on damage
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CreeperUnstable fkbm.options matches 0.. run scoreboard players set CreeperUnstable fkbm.options 1

# Allow fiew creepers to be Powered (lighting charged)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score CreeperPowered fkbm.options matches 0.. run scoreboard players set CreeperPowered fkbm.options 1

# Allow some Creepers to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Creeper.Alpha fkbm.options matches 0.. run scoreboard players set Creeper.Alpha fkbm.options 1


## DROWNED

# Enable Drowned modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score DrownedTouch fkbm.options matches 0.. run scoreboard players set DrownedTouch fkbm.options 1

# Some Drowned may slow down player on hit, in water
# Default: 1
# 0: disabled
# 1: enabled
execute unless score DrownedHitslow fkbm.options matches 0.. run scoreboard players set DrownedHitslow fkbm.options 1

# Some Drowned may be immmune to daylight
# Default: 1
# 0: disabled
# 1: stone button helmet
# 2: fire resistance effect
execute unless score DrownedFireResistance fkbm.options matches 0.. run scoreboard players set DrownedFireResistance fkbm.options 1

# Allow some Drowneds to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Drowned.Alpha fkbm.options matches 0.. run scoreboard players set Drowned.Alpha fkbm.options 1


## ENDERMAN

# Enable Enderman modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EndermanTouch fkbm.options matches 0.. run scoreboard players set EndermanTouch fkbm.options 1

# Some endermans may freeze player with battle eyes
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EndermanLookfreeze fkbm.options matches 0.. run scoreboard players set EndermanLookfreeze fkbm.options 1

# Some endermans may teleport players into their vortex when chasing a player
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EndermanVortex fkbm.options matches 0.. run scoreboard players set EndermanVortex fkbm.options 1

# Some endermans may break blocks infront of their heads when chasing a player
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EndermanLookbreak fkbm.options matches 0.. run scoreboard players set EndermanLookbreak fkbm.options 1

# Allow some Endermans to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Enderman.Alpha fkbm.options matches 0.. run scoreboard players set Enderman.Alpha fkbm.options 1


## EVOKER

# Enable Evoker modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EvokerTouch fkbm.options matches 0.. run scoreboard players set EvokerTouch fkbm.options 1

# Some Evokers may heal nearby allies
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EvokerGroupHeal fkbm.options matches 0.. run scoreboard players set EvokerGroupHeal fkbm.options 1

# Evokers healing skill cooldown (seconds)
# Default: 30
# Range: 1 - 999
execute unless score EvokerGroupHealCd fkbm.options matches 0.. run scoreboard players set EvokerGroupHealCd fkbm.options 30

# Some Evokers may use a root spell on nearby players
# Default: 1
# 0: disabled
# 1: enabled
execute unless score EvokerRoot fkbm.options matches 0.. run scoreboard players set EvokerRoot fkbm.options 1

# Evokers root skill cooldown (seconds)
# Default: 8
# Range: 1 - 999
execute unless score EvokerRootCd fkbm.options matches 0.. run scoreboard players set EvokerRootCd fkbm.options 8

# Allow some Evokers to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Evoker.Alpha fkbm.options matches 0.. run scoreboard players set Evoker.Alpha fkbm.options 1


## HOGLIN

# Enable Hoglin modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HoglinTouch fkbm.options matches 0.. run scoreboard players set HoglinTouch fkbm.options 1

# Some hoglins may be immune to zombification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HoglinHotblood fkbm.options matches 0.. run scoreboard players set HoglinHotblood fkbm.options 1

# Some hoglins may have a permanent regeneration effect
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HoglinRegen fkbm.options matches 0.. run scoreboard players set HoglinRegen fkbm.options 1

# Some hoglins may stomp nearby players
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HoglinStomp fkbm.options matches 0.. run scoreboard players set HoglinStomp fkbm.options 1

# Stomp ability skill's cooldown (seconds)
# Default: 15
# Range: 0 - 100
execute unless score HoglinStompCd fkbm.options matches 0.. run scoreboard players set HoglinStompCd fkbm.options 15

# Allow some Hoglins to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Hoglin.Alpha fkbm.options matches 0.. run scoreboard players set Hoglin.Alpha fkbm.options 1


## HUSK

# Enable Husk modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HuskTouch fkbm.options matches 0.. run scoreboard players set HuskTouch fkbm.options 1

# Some husks may break torches
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HuskBreakTorch fkbm.options matches 0.. run scoreboard players set HuskBreakTorch fkbm.options 1

# Some husks may break wooden doors instantly (regardless of the difficulty)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HuskBreakDoor fkbm.options matches 0.. run scoreboard players set HuskBreakDoor fkbm.options 1

# Some husks may break wooden fences instantly (regardless of the difficulty)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HuskBreakFence fkbm.options matches 0.. run scoreboard players set HuskBreakFence fkbm.options 1

# Some husk may slow down player on hit, and buff nearby husks (speed)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score HuskHitslow fkbm.options matches 0.. run scoreboard players set HuskHitslow fkbm.options 1

# Cooldown loop regen: +2  hearts every (N x MobGameplayLatency) seconds (seconds)
# Default: N = 4 (means every 4 x 1 = 4 seconds)
# 0: disabled
# 1+: enabled, N = 1+
execute unless score HuskPassiveRegenCd fkbm.options matches 0.. run scoreboard players set HuskPassiveRegenCd fkbm.options 4

# Allow some Husks to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Husk.Alpha fkbm.options matches 0.. run scoreboard players set Husk.Alpha fkbm.options 1


## ILLUSIONER

# Enable illusioner modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score IllusionerTouch fkbm.options matches 0.. run scoreboard players set IllusionerTouch fkbm.options 1

# Illusioner spawn chance (in %) on target hit near a Pillager Outpost
# Default: 8
# Range: 0 - 100
execute unless score IllusionerSpawnChance fkbm.options matches 0.. run scoreboard players set IllusionerSpawnChance fkbm.options 8

# Some illusioner have powerfull bows
# Default: 1
# 0: disabled
# 1: enabled
execute unless score IllusionerEnchantedBow fkbm.options matches 0.. run scoreboard players set IllusionerEnchantedBow fkbm.options 1

# Heal spell cooldown in seconds (seconds)
# Default: 20
# Range: 1 - 999
execute unless score IllusionerHealCd fkbm.options matches 0.. run scoreboard players set IllusionerHealCd fkbm.options 20

# Some illusioner have lower cooldowns on global spells (also reduce heal cooldown)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score IllusionerBuffCd fkbm.options matches 0.. run scoreboard players set IllusionerBuffCd fkbm.options 1

# Allow some Illusioners to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Illusioner.Alpha fkbm.options matches 0.. run scoreboard players set Illusioner.Alpha fkbm.options 1


## PIGLIN

# Enable piglin modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinTouch fkbm.options matches 0.. run scoreboard players set PiglinTouch fkbm.options 1

# Some piglins may get a golden axe replacing crossbow
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinAxe fkbm.options matches 0.. run scoreboard players set PiglinAxe fkbm.options 1

# Some piglins may track you from far away
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinTracker fkbm.options matches 0.. run scoreboard players set PiglinTracker fkbm.options 1

# Some piglins may put a trap on the floor
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinTrap fkbm.options matches 0.. run scoreboard players set PiglinTrap fkbm.options 1

# Piglin's trap skill lifetime on the floor (seconds)
# Default: 60
# 0 : no lifetime / die instantly
# Range: 1 - 999
execute unless score PiglinTrapDuration fkbm.options matches 0.. run scoreboard players set PiglinTrapDuration fkbm.options 60

# Piglin's trap skill cooldown (seconds)
# Default: 30
# 0 : no cooldown / always up
# Range: 0 - 999
execute unless score PiglinTrapCd fkbm.options matches 0.. run scoreboard players set PiglinTrapCd fkbm.options 30

# Allow some Piglins to become a piglin brute
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinBrute fkbm.options matches 0.. run scoreboard players set PiglinBrute fkbm.options 1

# Chances per piglin to become a piglin brute (in %)
# Default: 5
# Range: 0 - 100
execute unless score PiglinBruteChance fkbm.options matches 0.. run scoreboard players set PiglinBruteChance fkbm.options 5

# Allow some Piglins to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Piglin.Alpha fkbm.options matches 0.. run scoreboard players set Piglin.Alpha fkbm.options 1


## PIGLIN BRUTE

# Enable piglin brute modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinBruteTouch fkbm.options matches 0.. run scoreboard players set PiglinBruteTouch fkbm.options 1

# Some piglin brutes may be equipped with armor pieces
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinBruteArmored fkbm.options matches 0.. run scoreboard players set PiglinBruteArmored fkbm.options 1

# Some piglin brutes may get a shield and block some arrows
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinBruteShield fkbm.options matches 0.. run scoreboard players set PiglinBruteShield fkbm.options 1

# Piglin brute's blocking arrow skill cooldown (seconds)
# Default: 1
# 0 : no cooldown / always up
# Range: 0 - 99
execute unless score PiglinBruteArrowBlockCd fkbm.options matches 0.. run scoreboard players set PiglinBruteArrowBlockCd fkbm.options 1

# Some piglin brutes may rush at its target when hurt
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinBruteBerserk fkbm.options matches 0.. run scoreboard players set PiglinBruteBerserk fkbm.options 1

# Piglin brute's rush skill cooldown (seconds)
# Default: 8
# 0 : no cooldown / always up
# Range: 0 - 999
execute unless score PiglinBruteBerserkRushCd fkbm.options matches 0.. run scoreboard players set PiglinBruteBerserkRushCd fkbm.options 8

# Allow some Piglin brutes to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PiglinBrute.Alpha fkbm.options matches 0.. run scoreboard players set PiglinBrute.Alpha fkbm.options 1


## PILLAGER

# Enable Pillager modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PillagerTouch fkbm.options matches 0.. run scoreboard players set PillagerTouch fkbm.options 1

# Some Pillagers may get Multishot enchantment
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PillagerMultishot fkbm.options matches 0.. run scoreboard players set PillagerMultishot fkbm.options 1

# Some Pillagers may get QuickCharge enchantment
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PillagerQuickCharge fkbm.options matches 0.. run scoreboard players set PillagerQuickCharge fkbm.options 1

# Some Pillagers may shot firework rockets
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PillagerFireworkRocket fkbm.options matches 0.. run scoreboard players set PillagerFireworkRocket fkbm.options 1

# Firework rockets reload cooldown (seconds)
# Default: 20
# 0 : no cooldown / always up
# Range: 0 - 100
execute unless score PillagerFireworkRocketCd fkbm.options matches 0.. run scoreboard players set PillagerFireworkRocketCd fkbm.options 20

# Allow some Pillagers to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Pillager.Alpha fkbm.options matches 0.. run scoreboard players set Pillager.Alpha fkbm.options 1


## POLAR BEAR

# Enable Polarbear modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PolarbearTouch fkbm.options matches 0.. run scoreboard players set PolarbearTouch fkbm.options 1

# Makes polar bears angry on player close range
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PolarbearAngry fkbm.options matches 0.. run scoreboard players set PolarbearAngry fkbm.options 1

# Allow some Polar bears to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score PolarBear.Alpha fkbm.options matches 0.. run scoreboard players set PolarBear.Alpha fkbm.options 1


## SLIME

# Enable Slime modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SlimeTouch fkbm.options matches 0.. run scoreboard players set SlimeTouch fkbm.options 1

# Makes some slimes capable of fusion between each other with a delay of X seconds (seconds)
# Default: 15
# 0: disabled
# Range: 1 - 99 seconds
execute unless score SlimeFusionCd fkbm.options matches 0.. run scoreboard players set SlimeFusionCd fkbm.options 15

# Allow slime to use MegaJumps
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SlimeMegaJump fkbm.options matches 0.. run scoreboard players set SlimeMegaJump fkbm.options 1

# Slime MegaJump skill's cooldown (seconds)
# Default: 10
# 0: disabled
# Range: 1 - 99 seconds
execute unless score SlimeMegaJumpCd fkbm.options matches 0.. run scoreboard players set SlimeMegaJumpCd fkbm.options 10

# Allow some Slimes to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Slime.Alpha fkbm.options matches 0.. run scoreboard players set Slime.Alpha fkbm.options 1


## SKELETON

# Enable Skeleton modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SkeletonTouch fkbm.options matches 0.. run scoreboard players set SkeletonTouch fkbm.options 1

# Some skeletons may break torches
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SkeletonBreakTorch fkbm.options matches 0.. run scoreboard players set SkeletonBreakTorch fkbm.options 1

# Some skeletons may be immmune to daylight
# Default: 1
# 0: disabled
# 1: stone button helmet
# 2: fire resistance effect
execute unless score SkeletonFireResistance fkbm.options matches 0.. run scoreboard players set SkeletonFireResistance fkbm.options 1

# Some skeletons may fight with swords
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SkeletonSword fkbm.options matches 0.. run scoreboard players set SkeletonSword fkbm.options 1

# Some Skeletons may fight with spears
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SkeletonSpear fkbm.options matches 0.. run scoreboard players set SkeletonSpear fkbm.options 1

# Some skeletons may use smoke bombs
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SkeletonSmokeBomb fkbm.options matches 0.. run scoreboard players set SkeletonSmokeBomb fkbm.options 1

# Some skeletons may use fire bombs
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SkeletonFireBomb fkbm.options matches 0.. run scoreboard players set SkeletonFireBomb fkbm.options 1

# Some skeletons may block arrows with a shield
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SkeletonShield fkbm.options matches 0.. run scoreboard players set SkeletonShield fkbm.options 1

# Blocking arrows skill's cooldown (seconds)
# Default: 1
# Range: 0 - 1
execute unless score SkeletonArrowBlockCd fkbm.options matches 0.. run scoreboard players set SkeletonArrowBlockCd fkbm.options 1

# Allow some Skeletons to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Skeleton.Alpha fkbm.options matches 0.. run scoreboard players set Skeleton.Alpha fkbm.options 1


## SPIDER

# Enable Spider modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SpiderTouch fkbm.options matches 0.. run scoreboard players set SpiderTouch fkbm.options 1

# Allow Spiders to stick to the ceiling (mess up with the name system)
# Default: 0
# 0: disabled
# 1: enabled
execute unless score SpiderCeiling fkbm.options matches 0.. run scoreboard players set SpiderCeiling fkbm.options 0

# Some Spiders may spit cobweb at player
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SpiderCobweb fkbm.options matches 0.. run scoreboard players set SpiderCobweb fkbm.options 1

# Some Spiders may put cobweb in their paths when chasing a player
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SpiderStickyPath fkbm.options matches 0.. run scoreboard players set SpiderStickyPath fkbm.options 1

# Some Spiders may summon baby cave spiders as pets
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SpiderMommy fkbm.options matches 0.. run scoreboard players set SpiderMommy fkbm.options 1

# Summon baby cave spider skill's cooldown (seconds)
# Default: 20
# Range: 0 - 999
execute unless score SpiderMommyCd fkbm.options matches 0.. run scoreboard players set SpiderMommyCd fkbm.options 20

# Do aggro nearby baby spiders on player hurt mother spider
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SpiderMommyAggroBabies fkbm.options matches 0.. run scoreboard players set SpiderMommyAggroBabies fkbm.options 1

# Aggro skill's cooldown (seconds)
# Default: 15
# Range: 1 - 999
execute unless score SpiderMommyAggroBabiesCd fkbm.options matches 0.. run scoreboard players set SpiderMommyAggroBabiesCd fkbm.options 15

# Some Spiders may craft a defensive web cocoon
# Default: 1
# 0: disabled
# 1: enabled
execute unless score SpiderCocoon fkbm.options matches 0.. run scoreboard players set SpiderCocoon fkbm.options 1

# Web cocoon craft skill's cooldown (seconds)
# Default: 40
# Range: 1 - 999
execute unless score SpiderCocoonCd fkbm.options matches 0.. run scoreboard players set SpiderCocoonCd fkbm.options 40

# Allow some Spiders to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Spider.Alpha fkbm.options matches 0.. run scoreboard players set Spider.Alpha fkbm.options 1


## STRAY

# Enable stray modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score StrayTouch fkbm.options matches 0.. run scoreboard players set StrayTouch fkbm.options 1

# Some stray may break torches
# Default: 1
# 0: disabled
# 1: enabled
execute unless score StrayBreakTorch fkbm.options matches 0.. run scoreboard players set StrayBreakTorch fkbm.options 1

# Some stray may freeze player on touch
# Default: 1
# 0: disabled
# 1: enabled
execute unless score StrayFrozenThorns fkbm.options matches 0.. run scoreboard players set StrayFrozenThorns fkbm.options 1

# Frozen Thorns skill's cooldown (seconds)
# Default: 5
# Range: 0 - 99
execute unless score StrayFrozenThornsCd fkbm.options matches 0.. run scoreboard players set StrayFrozenThornsCd fkbm.options 5

# Some stray may freeze touched nearby water into ice
# Default: 1
# 0: disabled
# 1: enabled
execute unless score StrayFrostWalker fkbm.options matches 0.. run scoreboard players set StrayFrostWalker fkbm.options 1

# Some stray may be immmune to daylight
# Default: 1
# 0: disabled
# 1: stone button helmet
# 2: fire resistance effect
execute unless score StrayFireResistance fkbm.options matches 0.. run scoreboard players set StrayFireResistance fkbm.options 1

# Some stray may summon an ice prison on close player
# Default: 1
# 0: disabled
# 1: enabled
execute unless score StrayIcePrison fkbm.options matches 0.. run scoreboard players set StrayIcePrison fkbm.options 1

# Ice prison skill's cooldown (seconds)
# Default: 20
# Range: 0 - 20
execute unless score StrayIcePrisonCd fkbm.options matches 0.. run scoreboard players set StrayIcePrisonCd fkbm.options 20

# Allow some Strays to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Stray.Alpha fkbm.options matches 0.. run scoreboard players set Stray.Alpha fkbm.options 1


## VEX

# Enable Vex modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VexTouch fkbm.options matches 0.. run scoreboard players set VexTouch fkbm.options 1

# Some Vex may use an armored shield giving them some armor
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VexShield fkbm.options matches 0.. run scoreboard players set VexShield fkbm.options 1

# Some Vex may use an additional sword in offhand (cosmetic)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VexDualSword fkbm.options matches 0.. run scoreboard players set VexDualSword fkbm.options 1

# Some Vex may use an axe instead of a sword
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VexAxe fkbm.options matches 0.. run scoreboard players set VexAxe fkbm.options 1

# Some Vex may dodge most arrows
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VexDodge fkbm.options matches 0.. run scoreboard players set VexDodge fkbm.options 1

# Vex dodge skill's cooldown (seconds)
# Default: 3
# Range : 0 - 100
execute unless score VexDodgeCd fkbm.options matches 0.. run scoreboard players set VexDodgeCd fkbm.options 3

# Allow some Vexs to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Vex.Alpha fkbm.options matches 0.. run scoreboard players set Vex.Alpha fkbm.options 1


## VINDICATOR

# Enable Vindicator modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VindicatorTouch fkbm.options matches 0.. run scoreboard players set VindicatorTouch fkbm.options 1

# Vindicators spawn chance in Pillager Outposts by replacing a Pillager (in %)
# Default: 30
# 0: disabled
# Range: 0 - 100
execute unless score VindicatorInOutposts fkbm.options matches 0.. run scoreboard players set VindicatorInOutposts fkbm.options 30

# Some Vindicators may be Swordman (quick attack speed, parry skill)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VindicatorDualSword fkbm.options matches 0.. run scoreboard players set VindicatorDualSword fkbm.options 1

# Some vindicators may be workers with shovels (can stun you)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VindicatorDummy fkbm.options matches 0.. run scoreboard players set VindicatorDummy fkbm.options 1

# Some Vindicators may enrage (increased damage + speed, but get poison)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score VindicatorRage fkbm.options matches 0.. run scoreboard players set VindicatorRage fkbm.options 1

# Vindicators enrage skill's cooldown (seconds)
# Default: 15
# Range : 0 - 100
execute unless score VindicatorRageCd fkbm.options matches 0.. run scoreboard players set VindicatorRageCd fkbm.options 15

# Allow some Vindicators to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Vindicator.Alpha fkbm.options matches 0.. run scoreboard players set Vindicator.Alpha fkbm.options 1


## WITCH

# Enable Witch modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitchTouch fkbm.options matches 0.. run scoreboard players set WitchTouch fkbm.options 1

# Some witches may passively regen health
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitchPassiveRegen fkbm.options matches 0.. run scoreboard players set WitchPassiveRegen fkbm.options 1

# Some witches may summon minions
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitchSummon fkbm.options matches 0.. run scoreboard players set WitchSummon fkbm.options 1

# Cooldown of the summon spell (seconds)
# Default: 40
# Range : 0 - 999
execute unless score WitchSummonCd fkbm.options matches 0.. run scoreboard players set WitchSummonCd fkbm.options 40

# Some witches may use a time freeze when near death
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitchZonya fkbm.options matches 0.. run scoreboard players set WitchZonya fkbm.options 1

# Witch Zonya skill's cooldown (seconds)
# Default: 60
# Range : 0 - 999
execute unless score WitchZonyaCd fkbm.options matches 0.. run scoreboard players set WitchZonyaCd fkbm.options 60

# Allow some Witchs to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Witch.Alpha fkbm.options matches 0.. run scoreboard players set Witch.Alpha fkbm.options 1


## WITHER SKELETON

# Enable Wither Skeleton modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonTouch fkbm.options matches 0.. run scoreboard players set WitherSkeletonTouch fkbm.options 1

# Some wither skeletons may break protective blocs infront their eyes
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonLookbreak fkbm.options matches 0.. run scoreboard players set WitherSkeletonLookbreak fkbm.options 1

# Some wither skeletons may spread darkness and heal themselfs
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonDarkness fkbm.options matches 0.. run scoreboard players set WitherSkeletonDarkness fkbm.options 1

# Darkness skill's cooldown (seconds)
# Default: 20
# 0: no cooldown
# Range: 0 - 999
execute unless score WitherSkeletonDarknessCd fkbm.options matches 0.. run scoreboard players set WitherSkeletonDarknessCd fkbm.options 20

# Some wither skeletons may summon flying blades
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonFlyingBlades fkbm.options matches 0.. run scoreboard players set WitherSkeletonFlyingBlades fkbm.options 1

# Flying blades skill's cooldown (seconds)
# Default: 40
# 0: no cooldown
# Range: 0 - 999
execute unless score WitherSkeletonFlyingBladesCd fkbm.options matches 0.. run scoreboard players set WitherSkeletonFlyingBladesCd fkbm.options 60

# Some wither skeletons may block arrows with a shield
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonShield fkbm.options matches 0.. run scoreboard players set WitherSkeletonShield fkbm.options 1

# Blocking arrows skill's cooldown (seconds)
# Default: 1
# Range: 0 - 99
execute unless score WitherSkeletonArrowBlockCd fkbm.options matches 0.. run scoreboard players set WitherSkeletonArrowBlockCd fkbm.options 1

# Some wither skeletons may be randomly equipped with thorn armors
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonThorn fkbm.options matches 0.. run scoreboard players set WitherSkeletonThorn fkbm.options 1

# Some wither skeletons may fight with iron swords
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonSword fkbm.options matches 0.. run scoreboard players set WitherSkeletonSword fkbm.options 1

# Some wither skeletons may fight with bow
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeletonBow fkbm.options matches 0.. run scoreboard players set WitherSkeletonBow fkbm.options 1

# Allow some Wither skeletons to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WitherSkeleton.Alpha fkbm.options matches 0.. run scoreboard players set WitherSkeleton.Alpha fkbm.options 1


## WOLF

# Enable Wolf modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WolfTouch fkbm.options matches 0.. run scoreboard players set WolfTouch fkbm.options 1

# Makes wild wolfs angry on player close range
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WolfAngry fkbm.options matches 0.. run scoreboard players set WolfAngry fkbm.options 1

# Makes wild wolfs more aggressive during the night
# Default: 1
# 0: disabled
# 1: enabled
execute unless score WolfNightAttack fkbm.options matches 0.. run scoreboard players set WolfNightAttack fkbm.options 1

# Allow some Wolfs to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Wolf.Alpha fkbm.options matches 0.. run scoreboard players set Wolf.Alpha fkbm.options 1


## ZOMBIE / ZOMBIE_VILLAGER

# Enable Zombie modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombieTouch fkbm.options matches 0.. run scoreboard players set ZombieTouch fkbm.options 1

# Some zombies may break torches
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombieBreakTorch fkbm.options matches 0.. run scoreboard players set ZombieBreakTorch fkbm.options 1

# Some zombies may break wooden doors instantly (regardless of the difficulty)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombieBreakDoor fkbm.options matches 0.. run scoreboard players set ZombieBreakDoor fkbm.options 1

# Some zombies may be immmune to daylight
# Default: 1
# 0: disabled
# 1: stone button helmet
# 2: fire resistance effect
execute unless score ZombieFireResistance fkbm.options matches 0.. run scoreboard players set ZombieFireResistance fkbm.options 1

# Some zombies may break wooden fences instantly (regardless of the difficulty)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombieBreakFence fkbm.options matches 0.. run scoreboard players set ZombieBreakFence fkbm.options 1

# Some zombies may place dirt when a player is higher
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombieCanBuild fkbm.options matches 0.. run scoreboard players set ZombieCanBuild fkbm.options 1

# Some zombies may dig into soft materials (sand, gravel, dirt...)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombieCanDig fkbm.options matches 0.. run scoreboard players set ZombieCanDig fkbm.options 1

# Time required (seconds) to dig into soft materials (sand, gravel, dirt...). Stacks if multiple zombie diggers.
# Default: 3
# 0: instant
# Range: 1 - 99
execute unless score ZombieDigTime fkbm.options matches 0.. run scoreboard players set ZombieDigTime fkbm.options 3

# Allow some Zombies to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score Zombie.Alpha fkbm.options matches 0.. run scoreboard players set Zombie.Alpha fkbm.options 1


## ZOMBIFIED PIGLIN

# Enable Zombified Piglin modification
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombifiedPiglinTouch fkbm.options matches 0.. run scoreboard players set ZombifiedPiglinTouch fkbm.options 1

# Some zombified piglins may spread poison
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombifiedPiglinInfected fkbm.options matches 0.. run scoreboard players set ZombifiedPiglinInfected fkbm.options 1

# Spread poison skill cooldown (seconds)
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombifiedPiglinInfectedCd fkbm.options matches 0.. run scoreboard players set ZombifiedPiglinInfectedCd fkbm.options 1

# Some zombified piglins may explode on touch
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombifiedPiglinExplosive fkbm.options matches 0.. run scoreboard players set ZombifiedPiglinExplosive fkbm.options 1

# Some zombified piglins may be naturaly aggressive
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombifiedPiglinAggressive fkbm.options matches 0.. run scoreboard players set ZombifiedPiglinAggressive fkbm.options 1

# Allow some Zombified piglins to become a powerful ALPHA
# Default: 1
# 0: disabled
# 1: enabled
execute unless score ZombifiedPiglin.Alpha fkbm.options matches 0.. run scoreboard players set ZombifiedPiglin.Alpha fkbm.options 1
