## skills
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.bogged.torch
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.bogged.fireresist
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.bogged.poison_leak
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.bogged.infested
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.bogged.summoner
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.bogged.armored
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.bogged.sword
execute if predicate fkbmtool:rng/10 run tag @s[tag=!fkbm.bogged.sword] add fkbm.bogged.spear
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.bogged.shield

## attributes
attribute @s minecraft:max_health modifier add fkbm 4 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.02 add_value
#attribute @s minecraft:follow_range modifier add fkbm 0 add_value
#data merge entity @s {Health:20f}
