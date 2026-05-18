## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.bogged.torch
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.bogged.fireresist
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.bogged.poison_leak
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.bogged.infested
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.bogged.summoner
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.bogged.armored
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.bogged.sword
execute if predicate fkbmtool:rng/10 run tag @s[tag=!fkbm.bogged.sword] add fkbm.bogged.spear
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.bogged.shield

## attributes
attribute @s minecraft:max_health modifier add fkbm 24 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.06 add_value
attribute @s minecraft:follow_range modifier add fkbm 16 add_value
data merge entity @s {Health:24f}
