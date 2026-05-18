# chainmail armor
execute if predicate fkbm:mobs/equipment/head_air if predicate fkbmtool:rng/20 run item replace entity @s armor.head with minecraft:chainmail_helmet[damage=140,custom_name={"italic":false,"text":"Rusty Chainmail Helmet"},item_name={"italic":false,"text":"Rusty Chainmail Helmet"}]
execute if predicate fkbm:mobs/equipment/chest_air if predicate fkbmtool:rng/20 run item replace entity @s armor.chest with minecraft:chainmail_chestplate[damage=220,custom_name={"italic":false,"text":"Rusty Chainmail Chestplate"},item_name={"italic":false,"text":"Rusty Chainmail Chestplate"}]
execute if predicate fkbm:mobs/equipment/legs_air if predicate fkbmtool:rng/20 run item replace entity @s armor.legs with minecraft:chainmail_leggings[damage=105,custom_name={"italic":false,"text":"Rusty Chainmail Leggings"},item_name={"italic":false,"text":"Rusty Chainmail Leggings"}]
execute if predicate fkbm:mobs/equipment/feet_air if predicate fkbmtool:rng/20 run item replace entity @s armor.feet with minecraft:chainmail_boots[damage=175,custom_name={"italic":false,"text":"Rusty Chainmail Boots"},item_name={"italic":false,"text":"Rusty Chainmail Boots"}]

# copper armor
execute if predicate fkbm:mobs/equipment/head_air if predicate fkbmtool:rng/60 run item replace entity @s armor.head with minecraft:copper_helmet[damage=57,custom_name={"italic":false,"text":"Moldy Copper Helmet"},item_name={"italic":false,"text":"Moldy Copper Helmet"}]
execute if predicate fkbm:mobs/equipment/chest_air if predicate fkbmtool:rng/60 run item replace entity @s armor.chest with minecraft:copper_chestplate[damage=92,custom_name={"italic":false,"text":"Moldy Copper Chestplate"},item_name={"italic":false,"text":"Moldy Copper Chestplate"}]
execute if predicate fkbm:mobs/equipment/legs_air if predicate fkbmtool:rng/60 run item replace entity @s armor.legs with minecraft:copper_leggings[damage=85,custom_name={"italic":false,"text":"Moldy Copper Leggings"},item_name={"italic":false,"text":"Moldy Copper Leggings"}]
execute if predicate fkbm:mobs/equipment/feet_air if predicate fkbmtool:rng/60 run item replace entity @s armor.feet with minecraft:copper_boots[damage=71,custom_name={"italic":false,"text":"Moldy Copper Boots"},item_name={"italic":false,"text":"Moldy Copper Boots"}]

# toughness
execute if score #IndividualDiff fkbm.options matches 1 run return run attribute @s minecraft:armor_toughness modifier add fkbm.armored 4 add_value
execute if score #IndividualDiff fkbm.options matches 2 run return run attribute @s minecraft:armor_toughness modifier add fkbm.armored 6 add_value
execute if score #IndividualDiff fkbm.options matches 3 run return run attribute @s minecraft:armor_toughness modifier add fkbm.armored 8 add_value
