## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.torch
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.husk.door
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.husk.fence
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.husk.hitslow
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.husk.regen
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b,CanBreakDoors:1b}
execute if predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b}

## attributes
#attribute @s minecraft:follow_range modifier add fkbm 0 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.3 add_value
attribute @s minecraft:movement_speed modifier add fkbm -0.07 add_value

# adult
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 30 add_value
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:50f}

# baby
#execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 0 add_value
#execute if predicate fkbm:mobs/is_baby run data merge entity @s {Health:20f}
