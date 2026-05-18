## skills
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.zombified_piglin.infected
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.zombified_piglin.explosive
execute if predicate fkbmtool:rng/01 run tag @s add fkbm.zombified_piglin.aggressive

## attributes

# adult
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm 0 add_value
execute unless predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
execute unless predicate fkbm:mobs/is_baby run data merge entity @s {Health:20f,CanPickUpLoot:1b,CanBreakDoors:1b}

# baby
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:max_health modifier add fkbm -12 add_value
execute if predicate fkbm:mobs/is_baby run attribute @s minecraft:movement_speed modifier add fkbm -0.07 add_value
execute if predicate fkbm:mobs/is_baby run data merge entity @s {Health:8f,CanPickUpLoot:1b}
