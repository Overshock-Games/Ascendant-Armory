# tag
tag @s add fkbm.affinity.resistant

# armor
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:armor modifier add fkbm.affinity 08 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:armor modifier add fkbm.affinity 10 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:armor modifier add fkbm.affinity 12 add_value

# toughness
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:armor_toughness modifier add fkbm.affinity 4 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:armor_toughness modifier add fkbm.affinity 6 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:armor_toughness modifier add fkbm.affinity 8 add_value
