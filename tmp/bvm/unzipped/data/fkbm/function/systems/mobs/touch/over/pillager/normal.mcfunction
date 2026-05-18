## skills
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.firework
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.multishot
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.pillager.quickcharge

## attributes
attribute @s minecraft:max_health modifier add fkbm 6 add_value
attribute @s minecraft:armor modifier add fkbm 7 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.02 add_value
data merge entity @s {Health:30f}
