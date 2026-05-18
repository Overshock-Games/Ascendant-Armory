# cocoon
fill ~-2 ~-1 ~-1 ~2 ~1 ~1 minecraft:cobweb replace #fkbm:spider_cocoon
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 minecraft:cobweb replace #fkbm:spider_cocoon
fill ~-1 ~-1 ~-2 ~1 ~1 ~2 minecraft:cobweb replace #fkbm:spider_cocoon
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:cobweb
effect give @s minecraft:slowness 10 9 true
effect give @s minecraft:absorption 10 1 true

# fx
particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~1 ~ 2 2 2 .1 99
playsound minecraft:entity.spider.step hostile @a[distance=..16] ^ ^ ^2 3 .5 .5

# cd
scoreboard players operation @s fkbm.cd2 = #40 fktool

# loop
execute align xyz positioned ~ ~.5 ~ run summon minecraft:marker ~ ~ ~ {Tags:["fkbm.spider.cocoon","global.ignore","smithed.entity","smithed.strict"]}
function fkbm:systems/mobs/loop/skill/spider/cocoon_loop
