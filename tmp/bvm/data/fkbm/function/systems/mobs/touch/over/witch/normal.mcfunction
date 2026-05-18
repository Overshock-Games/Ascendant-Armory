## skills
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.witch.regen
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.witch.summon
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.witch.zonya

## attributes
attribute @s minecraft:max_health modifier add fkbm 14 add_value
attribute @s minecraft:armor modifier add fkbm 8 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.07 add_value
data merge entity @s {Health:40f}
