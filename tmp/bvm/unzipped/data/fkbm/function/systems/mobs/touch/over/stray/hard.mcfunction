## skills
execute if predicate fkbmtool:rng/95 run tag @s add fkbm.stray.torch
execute if predicate fkbmtool:rng/80 run tag @s add fkbm.stray.frostwalker
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.stray.fireresist
execute if predicate fkbmtool:rng/70 run tag @s add fkbm.stray.frozenthorns
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.stray.iceprison

## attributes
attribute @s minecraft:max_health modifier add fkbm 20 add_value
attribute @s minecraft:attack_knockback modifier add fkbm 0.3 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
attribute @s minecraft:follow_range modifier add fkbm 16 add_value
data merge entity @s {Health:40f}
