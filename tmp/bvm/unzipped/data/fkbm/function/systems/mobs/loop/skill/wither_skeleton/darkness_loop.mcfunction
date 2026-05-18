execute as @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness.spread] at @s run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_check

execute if entity @n[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness.spread] run schedule function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_loop 10t
