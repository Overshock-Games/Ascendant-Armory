execute if score SpiderCeiling fkbm.options matches 1 run team join fkbm.spider @s
execute if entity @s[tag=fkbm.spider.mommy] run function fkbm:systems/mobs/touch/skill/spider/mommy
scoreboard players set @s[tag=fkbm.spider.mommy] fkbm.cd1 0
scoreboard players set @s[tag=fkbm.spider.mommy] fkbm.cd3 0
scoreboard players set @s[tag=fkbm.spider.cocoon] fkbm.cd2 0
