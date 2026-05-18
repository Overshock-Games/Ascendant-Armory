item replace entity @s weapon.mainhand with minecraft:golden_axe[damage=25,custom_name={"italic":false,"text":"Golden Hatchet"},item_name={"italic":false,"text":"Golden Hatchet"}]

execute if score #IndividualDiff fkbm.options matches 1 run return run attribute @s minecraft:attack_damage modifier add fkbm.axe 1 add_value
execute if score #IndividualDiff fkbm.options matches 2 run return run attribute @s minecraft:attack_damage modifier add fkbm.axe 2 add_value
execute if score #IndividualDiff fkbm.options matches 3 run return run attribute @s minecraft:attack_damage modifier add fkbm.axe 3 add_value
