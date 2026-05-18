# alpha chance (get all affinity buffs)
execute run function fkbmtool:rng/get

execute if score #3 fktool >= Random fktool run tag @s add fkbm.alpha

# affinity buffs
execute if entity @s[tag=fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/alpha
execute if entity @s[tag=!fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/touch

# canceler
execute if entity @s[tag=!fkbm.alpha] run return 0

# scale
attribute @s minecraft:scale modifier add fkbm.alpha 0.25 add_multiplied_base

# spe
effect give @s minecraft:regeneration infinite 0 true

# weapon
execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:golden_axe[damage=25,custom_name={"italic":false,"text":"Golden Battelaxe"},item_name={"italic":false,"text":"Golden Battelaxe"}]
execute if predicate fkbm:generic/empty_offhand run item replace entity @s weapon.offhand with minecraft:golden_sword[damage=25]

# armor
data modify entity @s drop_chances set value {head:0.05f,chest:0.05f,legs:0.05f,feet:0.05f}
execute if predicate fkbm:mobs/equipment/head_air if predicate fkbmtool:rng/50 run item replace entity @s armor.head with minecraft:chainmail_helmet[damage=140,custom_name={"italic":false,"text":"Heavy Chainmail Helmet"},item_name={"italic":false,"text":"Heavy Chainmail Helmet"}]
execute if predicate fkbm:mobs/equipment/chest_air if predicate fkbmtool:rng/50 run item replace entity @s armor.chest with minecraft:chainmail_chestplate[damage=220,custom_name={"italic":false,"text":"Heavy Chainmail Chestplate"},item_name={"italic":false,"text":"Heavy Chainmail Chestplate"}]
execute if predicate fkbm:mobs/equipment/legs_air if predicate fkbmtool:rng/50 run item replace entity @s armor.legs with minecraft:chainmail_leggings[damage=105,custom_name={"italic":false,"text":"Heavy Chainmail Leggings"},item_name={"italic":false,"text":"Heavy Chainmail Leggings"}]
execute if predicate fkbm:mobs/equipment/feet_air if predicate fkbmtool:rng/50 run item replace entity @s armor.feet with minecraft:chainmail_boots[damage=175,custom_name={"italic":false,"text":"Heavy Chainmail Boots"},item_name={"italic":false,"text":"Heavy Chainmail Boots"}]
