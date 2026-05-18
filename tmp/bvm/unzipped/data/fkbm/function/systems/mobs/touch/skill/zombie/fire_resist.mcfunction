data modify entity @s Fire set value -1s
execute if score ZombieFireResistance fkbm.options matches 1 if predicate fkbm:mobs/equipment/head_air run data modify entity @s drop_chances.head set value 0.0f
execute if score ZombieFireResistance fkbm.options matches 1 if predicate fkbm:mobs/equipment/head_air run return run item replace entity @s armor.head with minecraft:stone_button
execute if score ZombieFireResistance fkbm.options matches 2 run return run effect give @s minecraft:fire_resistance infinite 0 true
