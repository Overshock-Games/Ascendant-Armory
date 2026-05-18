## skills
execute if predicate fkbmtool:rng/95 run tag @s add fkbm.skeleton.torch
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.skeleton.firebomb
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.skeleton.sword
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.skeleton.shield

## attributes
attribute @s minecraft:max_health modifier add fkbm 20 add_value
attribute @s minecraft:armor modifier add fkbm 6 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.04 add_value
attribute @s minecraft:follow_range modifier add fkbm 16 add_value
data merge entity @s {Health:40f}
