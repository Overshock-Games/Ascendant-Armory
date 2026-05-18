## skills
execute if predicate fkbmtool:rng/95 run tag @s add fkbm.skeleton.torch
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.skeleton.fireresist
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.skeleton.smokebomb
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.skeleton.sword
execute if predicate fkbmtool:rng/10 run tag @s[tag=!fkbm.skeleton.sword] add fkbm.skeleton.spear
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.skeleton.shield

## attributes
attribute @s minecraft:max_health modifier add fkbm 20 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.04 add_value
attribute @s minecraft:follow_range modifier add fkbm 16 add_value
data merge entity @s {Health:40f}
