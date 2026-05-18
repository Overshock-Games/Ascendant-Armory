## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.creeper.bait
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.creeper.baby
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.creeper.unstable
execute if predicate fkbmtool:rng/02 run tag @s add fkbm.creeper.powered

## attributes
attribute @s minecraft:max_health modifier add fkbm 5 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.05 add_value
data merge entity @s {Health:25f,Fuse:30s}
