## skills
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.pillager.firework
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.pillager.multishot
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.pillager.quickcharge

## attributes
attribute @s minecraft:max_health modifier add fkbm 12 add_value
attribute @s minecraft:armor modifier add fkbm 10 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.05 add_value
data merge entity @s {Health:36f}
