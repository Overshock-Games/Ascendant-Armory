# tag
tag @s add fkbm.affinity.fast

# move speed
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:movement_speed modifier add fkbm.affinity .10 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:movement_speed modifier add fkbm.affinity .15 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:movement_speed modifier add fkbm.affinity .20 add_multiplied_base

# move efficiency
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:movement_efficiency modifier add fkbm.affinity .1 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:movement_efficiency modifier add fkbm.affinity .3 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:movement_efficiency modifier add fkbm.affinity .5 add_value
