advancement revoke @s only fkbm:mobs/stray_frozen_thorns
function fkbm:systems/difficulty/set_individual

# effects
execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:slowness 1 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:slowness 1 2 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:slowness 1 4 true

# fx
particle minecraft:snowflake ~ ~1 ~ .3 .5 .3 .1 10
particle minecraft:block{block_state:"minecraft:ice"} ~ ~1 ~ .3 .5 .3 .1 10
playsound minecraft:block.glass.break hostile @a[distance=..16] ^ ^ ^2 .8 .5 .2

# cd
execute as @e[type=minecraft:stray,distance=..8,sort=nearest,predicate=fkbm:generic/hurttime,limit=3] run scoreboard players operation @s fkbm.cd2 = #5 fktool
