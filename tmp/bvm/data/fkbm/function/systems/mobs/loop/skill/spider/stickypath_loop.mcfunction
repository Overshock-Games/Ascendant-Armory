execute as @e[type=minecraft:marker,tag=fkbm.spider.stickypath] at @s unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run function fkbm:systems/mobs/loop/skill/spider/stickypath_unplace

execute at @e[type=minecraft:marker,tag=fkbm.spider.stickypath] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run schedule function fkbm:systems/mobs/loop/skill/spider/stickypath_loop 5t replace
