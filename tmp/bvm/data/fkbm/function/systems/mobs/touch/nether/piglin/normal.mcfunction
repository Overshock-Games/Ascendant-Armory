# canceler
execute if entity @s[tag=fkbm.baby] run return 0

## skills
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.piglin.tracker
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.piglin.trap
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.piglin.axe

## attributes
attribute @s minecraft:max_health modifier add fkbm 9 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.3 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.02 add_value
data merge entity @s {Health:25f}
