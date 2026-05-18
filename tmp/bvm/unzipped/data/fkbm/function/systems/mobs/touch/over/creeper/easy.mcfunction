## skills
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.creeper.bait
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.creeper.baby
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.creeper.unstable
execute if predicate fkbmtool:rng/01 run tag @s add fkbm.creeper.powered

## attributes
#attribute @s minecraft:max_health modifier add fkbm 0 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
data merge entity @s {Health:20f,Fuse:30s}
