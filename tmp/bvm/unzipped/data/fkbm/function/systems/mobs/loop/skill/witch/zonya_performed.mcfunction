# fx
particle minecraft:warped_spore ~ ~1 ~ .2 .4 .2 0 10
particle minecraft:composter ~ ~1 ~ .3 .5 .3 0 5

# anim duration
scoreboard players operation #tmp fkbm.cd1 = #60 fktool
scoreboard players operation #tmp fkbm.cd1 -= #3 fktool
execute if score @s fkbm.cd1 <= #tmp fkbm.cd1 run tag @s remove fkbm.witch.zonya.effect
