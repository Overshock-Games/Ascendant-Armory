# forbidden skills for babies
tag @s remove fkbm.spider.mommy
tag @s remove fkbm.spider.cocoon
tag @s remove fkbm.spider.stickypath

# is baby summoned by mother
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:max_health modifier add fkbm.baby -0.7 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_damage modifier add fkbm.baby -0.3 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:movement_speed modifier add fkbm.baby -0.5 add_multiplied_base

execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:max_health modifier add fkbm.baby -0.5 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_damage modifier add fkbm.baby -0.2 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:movement_speed modifier add fkbm.baby -0.3 add_multiplied_base

execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:max_health modifier add fkbm.baby -0.2 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_damage modifier add fkbm.baby -0.1 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:movement_speed modifier add fkbm.baby -0.1 add_multiplied_base

# size
execute if predicate fkbmtool:rng/10 run return run attribute @s minecraft:scale modifier add fkbm.baby -0.7 add_multiplied_base
execute if predicate fkbmtool:rng/25 run return run attribute @s minecraft:scale modifier add fkbm.baby -0.6 add_multiplied_base
execute if predicate fkbmtool:rng/50 run return run attribute @s minecraft:scale modifier add fkbm.baby -0.5 add_multiplied_base
attribute @s minecraft:scale modifier add fkbm.baby -0.4 add_multiplied_base
