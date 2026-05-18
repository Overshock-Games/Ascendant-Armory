## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.piglin_brute.armored
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.piglin_brute.shield
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.piglin_brute.berserk

## attributes
attribute @s minecraft:max_health modifier add fkbm 20 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.5 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
data merge entity @s {Health:70f}
