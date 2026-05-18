## skills
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.evoker.groupregen
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.evoker.root

## attributes
attribute @s minecraft:max_health modifier add fkbm 6 add_value
attribute @s minecraft:armor modifier add fkbm 4 add_value
#attribute @s minecraft:movement_speed modifier add fkbm 0 add_value
data merge entity @s {Health:30f}
