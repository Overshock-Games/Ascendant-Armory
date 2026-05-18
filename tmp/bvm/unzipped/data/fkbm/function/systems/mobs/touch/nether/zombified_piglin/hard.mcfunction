## skills
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.zombified_piglin.infected
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.zombified_piglin.explosive
execute if predicate fkbmtool:rng/03 run tag @s add fkbm.zombified_piglin.aggressive

## attributes

# adult
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 20 add_value
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm 0.13 add_value
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:40f,CanPickUpLoot:1b,CanBreakDoors:1b}

# baby
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm -8 add_value
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm 0.01 add_value
execute if predicate fkbm:mobs/is_baby run data merge entity @s {Health:12f,CanPickUpLoot:1b}
