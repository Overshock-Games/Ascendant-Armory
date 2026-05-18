# tag
tag @s add fkbm.affinity.strong

# atk flat
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_damage modifier add fkbm.affinity.flat 2 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_damage modifier add fkbm.affinity.flat 3 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_damage modifier add fkbm.affinity.flat 4 add_value

# atk multi
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_damage modifier add fkbm.affinity.multiplier .10 add_multiplied_total
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_damage modifier add fkbm.affinity.multiplier .15 add_multiplied_total
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_damage modifier add fkbm.affinity.multiplier .20 add_multiplied_total

# atk speed
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_speed modifier add fkbm.affinity .10 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_speed modifier add fkbm.affinity .15 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_speed modifier add fkbm.affinity .20 add_multiplied_base
