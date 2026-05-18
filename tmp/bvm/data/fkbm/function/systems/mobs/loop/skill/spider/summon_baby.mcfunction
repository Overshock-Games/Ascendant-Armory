# summon
function fkbmtool:rng/get
execute if score Random fktool matches 01..99 run summon minecraft:spider ~ ~.2 ~ {Tags:["fkbm.spider.baby","fkbm.spider.baby.init"]}
execute if score Random fktool matches 35..65 run summon minecraft:spider ~-1 ~.2 ~ {Tags:["fkbm.spider.baby","fkbm.spider.baby.init"]}
execute if score Random fktool matches 45..55 run summon minecraft:spider ~ ~.2 ~1 {Tags:["fkbm.spider.baby","fkbm.spider.baby.init"]}
execute as @e[type=minecraft:spider,tag=fkbm.spider.baby.init,distance=..2] run function fkbm:systems/mobs/touch/modify {mob:"spider",dim:"over"}
tag @e[type=minecraft:spider,tag=fkbm.spider.baby.init,distance=..5] remove fkbm.spider.baby.init

# fx
particle minecraft:block{block_state:"minecraft:white_wool"} ~ ~1 ~ .5 .5 .5 .1 20
playsound minecraft:entity.spider.step hostile @a[distance=..16] ^ ^ ^2 1 .5 .5

# cd
tag @s add fkbm.spider.summoned
scoreboard players operation @s fkbm.cd1 = #20 fktool
