## skills
execute if predicate fkbmtool:rng/70 run tag @s add fkbm.evoker.groupregen
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.evoker.root

## attributes
attribute @s minecraft:max_health modifier add fkbm 18 add_value
attribute @s minecraft:armor modifier add fkbm 10 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.04 add_value
data merge entity @s {Health:42f}
