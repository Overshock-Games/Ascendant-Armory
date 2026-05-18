# tag
tag @s add fkbm.affinity.health

# health flat
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:max_health modifier add fkbm.affinity.flat 6 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:max_health modifier add fkbm.affinity.flat 8 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:max_health modifier add fkbm.affinity.flat 10 add_value

# health multi
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:max_health modifier add fkbm.affinity.multiplier 0.30 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:max_health modifier add fkbm.affinity.multiplier 0.40 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:max_health modifier add fkbm.affinity.multiplier 0.50 add_multiplied_base

# set current health
execute store result storage fkbm:data tmp double 1 run attribute @s minecraft:max_health get 1
data modify entity @s Health set from storage fkbm:data tmp
