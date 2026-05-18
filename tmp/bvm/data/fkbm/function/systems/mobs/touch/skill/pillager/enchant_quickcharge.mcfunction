# generic
data modify entity @s equipment.mainhand.components."minecraft:custom_name" set value {"italic":false,"text":"Homemade Crossbow"}
data modify entity @s equipment.mainhand.components."minecraft:item_name" set from entity @s equipment.mainhand.components."minecraft:custom_name"
data modify entity @s equipment.mainhand.components."minecraft:damage" set value 400
data modify entity @s drop_chances.mainhand set value 0.05f

# enchant
execute if score #IndividualDiff fkbm.options matches 1 run return run data modify entity @s equipment.mainhand.components."minecraft:enchantments" merge value {"minecraft:quick_charge":1}
execute if score #IndividualDiff fkbm.options matches 2 run return run data modify entity @s equipment.mainhand.components."minecraft:enchantments" merge value {"minecraft:quick_charge":2}
execute if score #IndividualDiff fkbm.options matches 3 run return run data modify entity @s equipment.mainhand.components."minecraft:enchantments" merge value {"minecraft:quick_charge":3}
