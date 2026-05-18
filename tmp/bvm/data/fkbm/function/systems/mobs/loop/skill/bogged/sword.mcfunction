# equip sword
execute if score #IndividualDiff fkbm.options matches 1 run item replace entity @s weapon.mainhand with minecraft:wooden_sword[damage=49]
execute if score #IndividualDiff fkbm.options matches 2 run item replace entity @s weapon.mainhand with minecraft:stone_sword[damage=111]
execute if score #IndividualDiff fkbm.options matches 3 run item replace entity @s weapon.mainhand with minecraft:iron_sword[damage=230]
data modify entity @s drop_chances.mainhand set value 0.05f

tag @s add fkbm.bogged.sworded
