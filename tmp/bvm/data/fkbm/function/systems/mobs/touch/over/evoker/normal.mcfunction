## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.evoker.groupregen
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.evoker.root

## attributes
attribute @s minecraft:max_health modifier add fkbm 12 add_value
attribute @s minecraft:armor modifier add fkbm 7 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.02 add_value
data merge entity @s {Health:36f}
