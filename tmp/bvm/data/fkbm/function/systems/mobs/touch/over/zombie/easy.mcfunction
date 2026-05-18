## skills
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.zombie.torch
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.zombie.door
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.zombie.fence
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.zombie.fireresist
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.zombie.dig
execute if predicate fkbmtool:rng/05 run tag @s add fkbm.zombie.build
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b,CanBreakDoors:1b}
execute if predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b}

## attributes
#attribute @s minecraft:follow_range modifier add fkbm 0 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.2 add_value

# adult
#execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 0 add_value
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
#execute unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:20f}

# baby
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm -12 add_value
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm -0.07 add_value
execute if predicate fkbm:mobs/is_baby run data merge entity @s {Health:8f}
