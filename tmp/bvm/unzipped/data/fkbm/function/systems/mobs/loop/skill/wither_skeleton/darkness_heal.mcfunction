# heal
execute if score @s fkbm.var matches 001 run effect give @s minecraft:instant_damage 1 0 true
execute if score @s fkbm.var matches 002 run effect give @s minecraft:instant_damage 1 1 true
execute if score @s fkbm.var matches 003 run effect give @s minecraft:instant_damage 1 2 true
execute if score @s fkbm.var matches 004 run effect give @s minecraft:instant_damage 1 3 true
execute if score @s fkbm.var matches 5.. run effect give @s minecraft:instant_damage 1 4 true

# fx
execute if score @s fkbm.var matches 001 run particle minecraft:heart ~ ~1 ~ .5 .5 .5 0 3
execute if score @s fkbm.var matches 002 run particle minecraft:heart ~ ~1 ~ .5 .5 .5 0 6
execute if score @s fkbm.var matches 003 run particle minecraft:heart ~ ~1 ~ .5 .5 .5 0 9
execute if score @s fkbm.var matches 004 run particle minecraft:heart ~ ~1 ~ .5 .5 .5 0 12
execute if score @s fkbm.var matches 5.. run particle minecraft:heart ~ ~1 ~ .5 .5 .5 0 15
