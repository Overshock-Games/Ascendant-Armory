# attr
attribute @s minecraft:max_health modifier add fkbm.worker 0.50 add_multiplied_base
attribute @s minecraft:movement_speed modifier add fkbm.worker -0.20 add_multiplied_base
attribute @s minecraft:attack_speed modifier add fkbm.worker -0.20 add_multiplied_base
execute if score #IndividualDiff fkbm.options matches 1 run attribute @s minecraft:attack_damage modifier add fkbm.worker 1 add_value
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_damage modifier add fkbm.worker 2 add_value
execute if score #IndividualDiff fkbm.options matches 3 run attribute @s minecraft:attack_damage modifier add fkbm.worker 3 add_value
attribute @s minecraft:armor modifier remove fkbm

# equipment
execute if score #IndividualDiff fkbm.options matches 1 run item replace entity @s weapon.mainhand with minecraft:stone_shovel[damage=110,custom_name={"italic":false,"text":"Trench Stone Shovel"},item_name={"italic":false,"text":"Trench Stone Shovel"}]
execute if score #IndividualDiff fkbm.options matches 2 run item replace entity @s weapon.mainhand with minecraft:copper_shovel[damage=160,custom_name={"italic":false,"text":"Trench Copper Shovel"},item_name={"italic":false,"text":"Trench Copper Shovel"}]
execute if score #IndividualDiff fkbm.options matches 3 run item replace entity @s weapon.mainhand with minecraft:iron_shovel[damage=230,custom_name={"italic":false,"text":"Trench Iron Shovel"},item_name={"italic":false,"text":"Trench Iron Shovel"}]
item replace entity @s weapon.offhand with minecraft:cobblestone
