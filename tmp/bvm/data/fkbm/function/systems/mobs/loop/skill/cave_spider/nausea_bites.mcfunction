advancement revoke @s only fkbm:mobs/cave_spider_hit_nausea

function fkbm:systems/difficulty/set_individual

execute as @n[type=minecraft:cave_spider,tag=fkbm.cavespider.nausea,distance=..5] at @s run playsound minecraft:entity.spider.hurt hostile @a[distance=..16] ~ ~ ~ 1 1.4 .2
execute facing entity @n[type=minecraft:cave_spider,tag=fkbm.cavespider.nausea,distance=..5] eyes positioned ^ ^-.2 ^.6 run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~ ~ .1 .1 .1 0 10

execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:slowness 3 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:slowness 4 1 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:slowness 5 2 true

execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:nausea 5 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:nausea 6 0 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:nausea 7 0 true
