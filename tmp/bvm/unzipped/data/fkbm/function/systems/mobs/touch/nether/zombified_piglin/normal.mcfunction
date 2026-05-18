## skills
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.zombified_piglin.infected
execute if predicate fkbmtool:rng/15 run tag @s add fkbm.zombified_piglin.explosive
execute if predicate fkbmtool:rng/02 run tag @s add fkbm.zombified_piglin.aggressive

## attributes

# adult
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 10 add_value
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm 0.08 add_value
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:30f,CanPickUpLoot:1b,CanBreakDoors:1b}

# baby
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm -10 add_value
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm -0.03 add_value
execute if predicate fkbm:mobs/is_baby run data merge entity @s {Health:10f,CanPickUpLoot:1b}
