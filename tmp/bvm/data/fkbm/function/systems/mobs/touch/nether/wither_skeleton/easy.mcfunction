## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.wither_skeleton.lookbreak
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.shield
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.wither_skeleton.thorns
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.wither_skeleton.bow
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.sword
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.darkness
execute if predicate fkbmtool:rng/05 run tag @s add fkbm.wither_skeleton.flying_blades

## attributes
attribute @s minecraft:max_health modifier add fkbm 20 add_value
attribute @s minecraft:armor modifier add fkbm 2 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.2 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
data merge entity @s {Health:40f}
