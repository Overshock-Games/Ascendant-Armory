execute as @e[type=minecraft:witch,tag=fkbm.witch.zonya.effect] at @s run function fkbm:systems/mobs/loop/skill/witch/zonya_performed

execute if entity @n[type=minecraft:witch,tag=fkbm.witch.zonya.effect] run schedule function fkbm:systems/mobs/loop/skill/witch/zonya_1t 2t