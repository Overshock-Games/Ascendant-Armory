## skills
execute if predicate fkbmtool:rng/95 run tag @s add fkbm.enderman.lookbreak
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.enderman.lookfreeze
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.enderman.vortex

## attributes
attribute @s minecraft:max_health modifier add fkbm 20 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.10 add_value
attribute @s minecraft:attack_knockback modifier add fkbm 0.30 add_value
data merge entity @s {Health:50f}
