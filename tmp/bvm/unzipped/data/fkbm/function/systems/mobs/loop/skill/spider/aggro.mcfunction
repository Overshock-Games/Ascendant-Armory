# fx
playsound minecraft:entity.spider.hurt hostile @a[distance=..32] ~ ~ ~ 3 .7 .5
execute anchored eyes positioned ^ ^.5 ^.2 run particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1
effect give @s minecraft:slowness 1 4 true
tp @s ~ ~.1 ~

# aggro
execute as @e[type=minecraft:spider,tag=fkbm.spider.baby,distance=..32] run function fkbm:systems/mobs/loop/skill/spider/aggro_nbt

# cd
scoreboard players operation @s fkbm.cd3 = #15 fktool
