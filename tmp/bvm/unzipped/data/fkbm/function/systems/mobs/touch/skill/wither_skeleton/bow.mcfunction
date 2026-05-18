item replace entity @s weapon.mainhand with minecraft:bow[damage=364,custom_name={"italic":false,"text":"Long Bow"},item_name={"italic":false,"text":"Long Bow"},enchantments={"minecraft:power":2}]
data modify entity @s drop_chances.mainhand set value 0.03f

# prevent sword skill
tag @s[tag=fkbm.wither_skeleton.sword] remove fkbm.wither_skeleton.sword
