# spit cobweb
execute at @p[distance=2..8,gamemode=!creative,gamemode=!spectator] positioned ~ ~.5 ~ run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:cobweb"},DropItem:0b,HurtEntities:0b}
execute at @p[distance=2..8,gamemode=!creative,gamemode=!spectator] positioned ~ ~1 ~ run particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~ ~ .1 .1 .1 .005 20
execute anchored eyes facing entity @p[distance=2..8,gamemode=!creative,gamemode=!spectator] feet run particle minecraft:block{block_state:"minecraft:cobweb"} ^ ^.5 ^5 .1 .1 .1 .005 20
playsound minecraft:item.honeycomb.wax_on hostile @a[distance=..16] ~ ~1 ~ 3 .5

tag @s add fkbm.spider.spited
