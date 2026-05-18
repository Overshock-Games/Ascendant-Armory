## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.stray.torch
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.stray.frostwalker
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.stray.fireresist
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.stray.frozenthorns
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.stray.iceprison

## attributes
attribute @s minecraft:max_health modifier add fkbm 10 add_value
attribute @s minecraft:attack_knockback modifier add fkbm 0.2 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.01 add_value
attribute @s minecraft:follow_range modifier add fkbm 8 add_value
data merge entity @s {Health:30f}
