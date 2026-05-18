## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.skeleton.torch
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.skeleton.firebomb
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.skeleton.sword
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.skeleton.shield

## attributes
attribute @s minecraft:max_health modifier add fkbm 10 add_value
attribute @s minecraft:armor modifier add fkbm 4 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.02 add_value
attribute @s minecraft:follow_range modifier add fkbm 8 add_value
data merge entity @s {Health:30f}
