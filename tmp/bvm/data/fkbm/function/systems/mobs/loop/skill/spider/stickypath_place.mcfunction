# cocoon
fill ~ ~ ~ ~ ~ ~ minecraft:cobweb replace #fkbm:spider_cocoon
execute align xyz positioned ~ ~.5 ~ run summon minecraft:marker ~ ~ ~ {Tags:["fkbm.spider.stickypath","global.ignore","smithed.entity","smithed.strict"]}

# fx
particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~.2 ~ .2 .2 .2 .1 5
playsound minecraft:entity.spider.step hostile @a[distance=..16] ~ ~ ~ .5 .5 .2

# loop
function fkbm:systems/mobs/loop/skill/spider/stickypath_loop
