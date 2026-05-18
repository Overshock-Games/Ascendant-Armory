# generic
data modify entity @s equipment.mainhand.components."minecraft:custom_name" set value {"italic":false,"text":"Illegal Crossbow"}
data modify entity @s equipment.mainhand.components."minecraft:item_name" set from entity @s equipment.mainhand.components."minecraft:custom_name"
data modify entity @s equipment.mainhand.components."minecraft:damage" set value 350
data modify entity @s drop_chances.mainhand set value 0.03f
