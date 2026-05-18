# check arrow owner
execute store result score #tmp1 fkbm.var run data get entity @s Owner[0]
execute store result score #tmp2 fkbm.var run data get entity @n[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.shield,scores={fkbm.cd1=..0},distance=..3] UUID[0]
execute store success score #tmp3 fkbm.var run execute if score #tmp1 fkbm.var = #tmp2 fkbm.var

# canceler
execute if score #tmp3 fkbm.var matches 1 run return 0

# block arrow
data merge entity @s {Tags:["fkbm.wither_skeleton.blocked"],Motion:[0d,0d,0d],damage:0d}

# fx
particle minecraft:wax_off ~ ~ ~ .1 .1 .1 0 3
playsound minecraft:block.bell.use hostile @a[distance=..32] ~ ~ ~ .1 2
playsound minecraft:entity.iron_golem.repair hostile @a[distance=..32] ~ ~ ~ .2 2

# cd
scoreboard players operation @n[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.shield,scores={fkbm.cd1=..0},distance=..3] fkbm.cd1 = #1 fktool
