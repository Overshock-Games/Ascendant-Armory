# jump
effect give @s minecraft:jump_boost 2 2 true
effect give @s minecraft:speed 2 5 true
effect give @s minecraft:resistance 2 2 true

# fx
execute if score @s fkbm.var matches ..2 run particle minecraft:spit ~ ~.2 ~ 0.5 .1 0.5 0 10
execute if score @s fkbm.var matches 3..5 run particle minecraft:spit ~ ~.5 ~ 1.0 .1 1.0 0 20
execute if score @s fkbm.var matches 6.. run particle minecraft:spit ~ ~.8 ~ 1.5 .1 1.5 0 30
playsound minecraft:block.bubble_column.whirlpool_inside hostile @a[distance=..16] ~ ~ ~ .5 2 0.2

# cd
scoreboard players operation @s fkbm.cd2 = #10 fktool
