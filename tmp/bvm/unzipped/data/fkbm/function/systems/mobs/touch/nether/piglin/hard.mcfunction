# canceler
execute if entity @s[tag=fkbm.baby] run return 0

## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.piglin.tracker
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.piglin.trap
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.piglin.axe

## attributes
attribute @s minecraft:max_health modifier add fkbm 14 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.5 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
data merge entity @s {Health:30f}
