# regen
effect give @s minecraft:instant_damage 1 0 true

# fx
particle minecraft:heart ~ ~1.2 ~ .3 .1 .3 50 3
playsound minecraft:block.wet_grass.step hostile @a[distance=..16] ~ ~ ~ .6 .5 .2

# cd
scoreboard players operation @s fkbm.cd1 = #4 fktool
