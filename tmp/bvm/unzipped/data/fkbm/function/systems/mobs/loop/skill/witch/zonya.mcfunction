tag @s add fkbm.witch.zonya.effect

# zonya
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:glowing 3 0 true
effect give @s minecraft:regeneration 3 5 false
effect give @s minecraft:levitation 3 0 false
function fkbm:systems/mobs/loop/skill/witch/zonya_1t

# fx
playsound minecraft:entity.goat.screaming.ambient hostile @a[distance=..32] ~ ~ ~ 3 .5
playsound minecraft:entity.bat.takeoff hostile @a[distance=..32] ~ ~ ~ 3 .5
particle minecraft:warped_spore ~ ~1 ~ .2 .4 .2 0 100
particle minecraft:composter ~ ~1 ~ .3 .5 .3 0 20

# cd
scoreboard players operation @s fkbm.cd1 = #60 fktool
