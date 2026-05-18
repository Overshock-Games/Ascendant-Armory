execute as @e[type=minecraft:marker,tag=fkbm.spider.cocoon] at @s unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..32] run function fkbm:systems/mobs/loop/skill/spider/cocoon_uncraft

execute at @e[type=minecraft:marker,tag=fkbm.spider.cocoon] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..32] run schedule function fkbm:systems/mobs/loop/skill/spider/cocoon_loop 5t replace
