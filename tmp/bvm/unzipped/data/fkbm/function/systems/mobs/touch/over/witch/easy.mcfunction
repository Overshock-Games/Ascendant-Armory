## skills
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.witch.regen
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.witch.summon
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.witch.zonya

## attributes
attribute @s minecraft:max_health modifier add fkbm 4 add_value
attribute @s minecraft:armor modifier add fkbm 4 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.05 add_value
data merge entity @s {Health:30f}
