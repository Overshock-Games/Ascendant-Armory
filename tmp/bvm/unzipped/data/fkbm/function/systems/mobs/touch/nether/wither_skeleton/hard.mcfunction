## skills
execute if predicate fkbmtool:rng/95 run tag @s add fkbm.wither_skeleton.lookbreak
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.wither_skeleton.shield
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.wither_skeleton.thorns
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.wither_skeleton.bow
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.wither_skeleton.sword
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.wither_skeleton.darkness
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.wither_skeleton.flying_blades

## attributes
attribute @s minecraft:max_health modifier add fkbm 40 add_value
attribute @s minecraft:armor modifier add fkbm 6 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.5 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.07 add_value
data merge entity @s {Health:60f}
