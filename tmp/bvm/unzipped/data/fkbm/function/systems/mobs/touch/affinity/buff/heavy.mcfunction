# tag
tag @s add fkbm.affinity.heavy

# knockback atk
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_knockback modifier add fkbm.affinity 1.0 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_knockback modifier add fkbm.affinity 1.5 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_knockback modifier add fkbm.affinity 2.0 add_value

# knockback res
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:knockback_resistance modifier add fkbm.affinity 0.3 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:knockback_resistance modifier add fkbm.affinity 0.4 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:knockback_resistance modifier add fkbm.affinity 0.5 add_value
