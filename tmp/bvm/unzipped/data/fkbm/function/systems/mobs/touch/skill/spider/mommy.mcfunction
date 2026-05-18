# shared
attribute @s minecraft:scale modifier add fkbm.mommy.scale 0.6 add_multiplied_base

execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:max_health modifier add fkbm.mommy.health 0.5 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:movement_speed modifier add fkbm.mommy.speed -0.5 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_damage modifier add fkbm.mommy.dmg 1.0 add_multiplied_base

execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:max_health modifier add fkbm.mommy.health 0.7 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:movement_speed modifier add fkbm.mommy.speed -0.4 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_damage modifier add fkbm.mommy.dmg 2.0 add_multiplied_base

execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:max_health modifier add fkbm.mommy.health 1.0 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:movement_speed modifier add fkbm.mommy.speed -0.3 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_damage modifier add fkbm.mommy.dmg 3.0 add_multiplied_base
