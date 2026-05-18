advancement revoke @s only fkbm:mobs/spider_mommy_aggro_babies

tag @s add fkbm.spider.mommy.attacker

# aggro skill
execute as @n[type=minecraft:spider,tag=fkbm.spider.mommy,distance=..32] at @s run function fkbm:systems/mobs/loop/skill/spider/aggro

tag @s remove fkbm.spider.mommy.attacker
