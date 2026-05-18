# quick shield
execute if score #IndividualDiff fkbm.options matches 1 run effect give @e[type=#fkbm:evoker_allies,distance=..8] minecraft:absorption 2 1 false
execute if score #IndividualDiff fkbm.options matches 2 run effect give @e[type=#fkbm:evoker_allies,distance=..8] minecraft:absorption 2 2 false
execute if score #IndividualDiff fkbm.options matches 3 run effect give @e[type=#fkbm:evoker_allies,distance=..8] minecraft:absorption 2 3 false

# regen over time
execute if score #IndividualDiff fkbm.options matches 1 run effect give @e[type=#fkbm:evoker_allies,distance=..8] minecraft:regeneration 10 1 false
execute if score #IndividualDiff fkbm.options matches 2 run effect give @e[type=#fkbm:evoker_allies,distance=..8] minecraft:regeneration 10 2 false
execute if score #IndividualDiff fkbm.options matches 3 run effect give @e[type=#fkbm:evoker_allies,distance=..8] minecraft:regeneration 10 3 false

# fx
execute at @e[type=#fkbm:evoker_allies,distance=..8] run particle minecraft:heart ~ ~1 ~ .3 .5 .3 0 5
playsound minecraft:entity.evoker.ambient hostile @a[distance=..16] ~ ~ ~ 2 1.3
playsound minecraft:entity.evoker.prepare_wololo hostile @a[distance=..16] ~ ~ ~ 2 1.3

# cd
scoreboard players operation @s fkbm.cd1 = #30 fktool
