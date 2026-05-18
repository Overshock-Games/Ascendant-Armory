## skills
execute if predicate fkbmtool:rng/90 run tag @s add fkbm.witch.regen
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.witch.summon
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.witch.zonya

## attributes
attribute @s minecraft:max_health modifier add fkbm 24 add_value
attribute @s minecraft:armor modifier add fkbm 12 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.09 add_value
data merge entity @s {Health:50f}
