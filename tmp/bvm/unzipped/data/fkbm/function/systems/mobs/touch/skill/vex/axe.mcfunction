# canceler
execute unless predicate fkbm:generic/empty_offhand run return run tag @s remove fkbm.vex.axe

# give axe
execute if score #IndividualDiff fkbm.options matches 1 run return run item replace entity @s weapon.mainhand with minecraft:wooden_axe[damage=50,custom_name={"italic":false,"text":"Wooden Hatchet"},item_name={"italic":false,"text":"Wooden Hatchet"}]
execute if score #IndividualDiff fkbm.options matches 2 run attribute @s minecraft:attack_damage modifier add fkbm.vex.axe -1 add_value
execute if score #IndividualDiff fkbm.options matches 2 run return run item replace entity @s weapon.mainhand with minecraft:stone_axe[damage=120,custom_name={"italic":false,"text":"Stone Hatchet"},item_name={"italic":false,"text":"Stone Hatchet"}]
execute if score #IndividualDiff fkbm.options matches 3 run return run item replace entity @s weapon.mainhand with minecraft:iron_axe[damage=230,custom_name={"italic":false,"text":"Iron Hatchet"},item_name={"italic":false,"text":"Iron Hatchet"}]
