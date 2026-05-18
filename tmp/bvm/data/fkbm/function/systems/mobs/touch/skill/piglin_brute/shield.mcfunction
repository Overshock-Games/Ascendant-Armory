# shield
execute if predicate fkbm:generic/empty_offhand run item replace entity @s weapon.offhand with minecraft:shield

# armor
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:armor modifier add fkbm.shield.armor 4 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:armor modifier add fkbm.shield.armor 6 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:armor modifier add fkbm.shield.armor 8 add_value

# toughness
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:armor_toughness modifier add fkbm.shield.toughness 4 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:armor_toughness modifier add fkbm.shield.toughness 8 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:armor_toughness modifier add fkbm.shield.toughness 12 add_value

# generic
scoreboard players set @s[tag=fkbm.piglin_brute.shield] fkbm.cd1 0
