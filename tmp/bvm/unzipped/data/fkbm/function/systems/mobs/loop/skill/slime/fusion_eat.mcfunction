# anim
execute if score @s fkbm.var matches 0..2 run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.2 ~ .2 .2 .2 0 20
execute if score @s fkbm.var matches 3..6 run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.5 ~ .4 .4 .4 0 30
playsound minecraft:item.honey_bottle.drink hostile @a[distance=..16] ~ ~ ~ 3 .7

# fusion
execute as @e[type=minecraft:slime,distance=.01..4,sort=nearest] if score @s fkbm.var = #SlimeSizeTemp fkbm.var run tag @s add fkbm.slime.fusion.dead.init
execute as @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead.init,limit=2] run tag @s add fkbm.slime.fusion.dead
execute as @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead.init,distance=..5] run tag @s remove fkbm.slime.fusion.dead.init
execute if score @s fkbm.var matches 0..2 at @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead,distance=..4,limit=2,sort=nearest] run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.2 ~ .2 .2 .2 0 4
execute if score @s fkbm.var matches 3..6 at @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead,distance=..4,limit=2,sort=nearest] run particle minecraft:block{block_state:"minecraft:slime_block"} ~ ~.5 ~ .4 .4 .4 0 8
execute as @e[type=minecraft:slime,tag=fkbm.slime.fusion.dead,distance=..4,limit=2,sort=nearest] run tp @s @n[type=minecraft:slime,tag=fkbm.slime.fusion.main,distance=..6]

# size
scoreboard players operation #SlimeSizeTemp fkbm.var *= #2 fktool
scoreboard players operation #SlimeSizeTemp fkbm.var += #1 fktool
execute store result storage fkbm:data tmp int 1 run scoreboard players get #SlimeSizeTemp fkbm.var
data modify entity @s Size set from storage fkbm:data tmp

# reset attr
attribute @s minecraft:max_health modifier remove fkbm
attribute @s minecraft:knockback_resistance modifier remove fkbm

# re touch
function fkbm:systems/mobs/touch/modify {mob:"slime",dim:"over"}

# cd
scoreboard players operation @e[type=minecraft:slime,distance=..2,limit=3,sort=nearest] fkbm.cd1 = #15 fktool

# kill
schedule function fkbm:systems/mobs/loop/skill/slime/fusion_kill 2t
