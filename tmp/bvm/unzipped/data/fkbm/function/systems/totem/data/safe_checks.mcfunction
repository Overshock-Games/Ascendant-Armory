tellraw @a[tag=fkdev] {"storage":"fkbm:text","nbt":"totem.found_head","interpret":true}

# by custom_data
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{fkbm:{totem:1b}}}}}] run return run tag @s add fkbm.totem

# search and rebuild (placed totem data has been removed)
execute run return fail
execute if entity @s[nbt={Item:{components:{"minecraft:custom_name":{"color":"aqua","italic":false,"text":"Totem of Weakness"}}}}] run return run function fkbm:systems/totem/data/rebuild
execute if entity @s[nbt={Item:{components:{"minecraft:custom_name":{"italic":false,"color":"aqua","text":"Totem of Weakness"}}}}] run return run function fkbm:systems/totem/data/rebuild
execute if entity @s[nbt={Item:{components:{"minecraft:custom_name":{"text":"Totem of Weakness","color":"aqua","italic":false}}}}] run return run function fkbm:systems/totem/data/rebuild
execute if entity @s[nbt={Item:{components:{"minecraft:custom_name":{"text":"Totem of Weakness","italic":false,"color":"aqua"}}}}] run return run function fkbm:systems/totem/data/rebuild
execute if entity @s[nbt={Item:{components:{"minecraft:custom_name":{"color":"aqua","text":"Totem of Weakness","italic":false}}}}] run return run function fkbm:systems/totem/data/rebuild
execute if entity @s[nbt={Item:{components:{"minecraft:custom_name":{"italic":false,"text":"Totem of Weakness","color":"aqua"}}}}] run return run function fkbm:systems/totem/data/rebuild
