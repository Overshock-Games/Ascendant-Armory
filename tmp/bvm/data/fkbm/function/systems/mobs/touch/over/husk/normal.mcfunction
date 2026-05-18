## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.husk.torch
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.door
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.fence
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.husk.hitslow
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.husk.regen
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b,CanBreakDoors:1b}
execute if predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b}

## attributes
attribute @s minecraft:follow_range modifier add fkbm 13 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.6 add_value
attribute @s minecraft:movement_speed modifier add fkbm -0.05 add_value

# adult
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 40 add_value
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:60f}

# baby
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 5 add_value
execute if predicate fkbm:mobs/is_baby run data merge entity @s {Health:25f}
