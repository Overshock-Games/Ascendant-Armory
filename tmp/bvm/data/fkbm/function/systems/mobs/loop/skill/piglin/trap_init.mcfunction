# set duration
scoreboard players operation #tmp.piglin.trap.duration fkbm.var = #60 fktool
scoreboard players operation #tmp.piglin.trap.duration fkbm.var *= #20 fktool
execute store result storage fkbm:data tmp int 1 run scoreboard players get #tmp.piglin.trap.duration fkbm.var
data modify entity @s Duration set from storage fkbm:data tmp

# fx
particle minecraft:dust_color_transition{from_color:[1f,.2f,.1f],scale:1f,to_color:[.5f,.2f,1f]} ~ ~.5 ~ .1 .3 .1 0 5
particle minecraft:dust_color_transition{from_color:[1f,.7f,.7f],scale:1f,to_color:[1f,.9f,.9f]} ~ ~.1 ~ .3 .05 .3 0 10
playsound minecraft:block.stone_button.click_off player @a[distance=..16] ~ ~ ~ 1 .5

tag @s remove fkbm.piglin.trap.init
