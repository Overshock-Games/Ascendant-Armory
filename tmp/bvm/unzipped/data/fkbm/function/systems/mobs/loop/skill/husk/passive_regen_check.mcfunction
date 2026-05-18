execute store result score #tmp1 fkbm.var run data get entity @s Health
execute store result score #tmp2 fkbm.var run attribute @s minecraft:max_health get

# regen
execute if score #tmp1 fkbm.var < #tmp2 fkbm.var run function fkbm:systems/mobs/loop/skill/husk/passive_regen

# passive fx
particle minecraft:mycelium ~ ~1 ~ .2 .5 .2 0 5
