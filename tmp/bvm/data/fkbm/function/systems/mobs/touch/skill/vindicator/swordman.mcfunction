# attr
attribute @s minecraft:armor modifier add fkbm.swordman 6 add_value
attribute @s minecraft:armor_toughness modifier add fkbm.swordman 6 add_value
attribute @s minecraft:attack_speed modifier add fkbm.swordman 0.20 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_damage modifier add fkbm.swordman 1 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_damage modifier add fkbm.swordman 2 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_damage modifier add fkbm.swordman 3 add_value

# equipment
execute if score #IndividualDiff fkbm.options matches 1 run item replace entity @s weapon.mainhand with minecraft:stone_sword[damage=110,custom_name={"italic":false,"text":"Stone Rapier"},item_name={"italic":false,"text":"Stone Rapier"}]
execute if score #IndividualDiff fkbm.options matches 2 run item replace entity @s weapon.mainhand with minecraft:copper_sword[damage=170,custom_name={"italic":false,"text":"Copper Rapier"},item_name={"italic":false,"text":"Copper Rapier"}]
execute if score #IndividualDiff fkbm.options matches 3 run item replace entity @s weapon.mainhand with minecraft:iron_sword[damage=235,custom_name={"italic":false,"text":"Iron Rapier"},item_name={"italic":false,"text":"Iron Rapier"}]

execute if score #IndividualDiff fkbm.options matches 1 run item replace entity @s weapon.offhand with minecraft:stone_sword[damage=110,custom_name={"italic":false,"text":"Stone Dagger"},item_name={"italic":false,"text":"Stone Dagger"}]
execute if score #IndividualDiff fkbm.options matches 2 run item replace entity @s weapon.offhand with minecraft:copper_sword[damage=170,custom_name={"italic":false,"text":"Copper Dagger"},item_name={"italic":false,"text":"Copper Dagger"}]
execute if score #IndividualDiff fkbm.options matches 3 run item replace entity @s weapon.offhand with minecraft:iron_sword[damage=230,custom_name={"italic":false,"text":"Iron Dagger"},item_name={"italic":false,"text":"Iron Dagger"}]
