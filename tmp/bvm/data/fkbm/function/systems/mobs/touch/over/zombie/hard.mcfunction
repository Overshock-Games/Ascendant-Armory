## skills
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.zombie.torch
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.zombie.door
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/75 run tag @s add fkbm.zombie.fence
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/50 run tag @s add fkbm.zombie.fireresist
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/30 run tag @s add fkbm.zombie.dig
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/15 run tag @s add fkbm.zombie.build
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b,CanBreakDoors:1b}
execute if predicate fkbm:mobs/is_baby run data merge entity @s {CanPickUpLoot:1b}

## attributes
attribute @s minecraft:follow_range modifier add fkbm 19 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.6 add_value

# adult
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 10 add_value
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm 0.11 add_value
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:30f}

# baby
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm -8 add_value
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm -0.01 add_value
execute if predicate fkbm:mobs/is_baby run data merge entity @s {Health:12f}
