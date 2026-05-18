execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=minecraft:piglin_brute,tag=fkbm.piglin_brute.shield,scores={fkbm.cd1=..0},distance=..32] at @s run function fkbm:systems/mobs/loop/skill/piglin_brute/arrowblock_check

execute at @e[type=minecraft:piglin_brute,tag=fkbm.piglin_brute.shield] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..32] run schedule function fkbm:systems/mobs/loop/skill/piglin_brute/arrowblock_loop 1t replace
