# check skill on going
execute store success score #tmp fkbm.var run execute if entity @n[type=minecraft:area_effect_cloud,tag=fkbm.wither_skeleton.darkness,distance=..1]
execute if score #tmp fkbm.var matches 1 run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_heal_check
execute if score #tmp fkbm.var matches 0 run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_stop

# reset
scoreboard players reset @s fkbm.var
