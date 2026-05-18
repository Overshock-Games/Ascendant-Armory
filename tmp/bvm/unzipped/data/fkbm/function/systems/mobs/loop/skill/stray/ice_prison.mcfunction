# canceler
execute at @p[distance=1..4,gamemode=!creative,gamemode=!spectator] unless block ~ ~ ~ #fkbm:stray_ice_prison run return fail

# spawn prison
execute at @p[distance=1..4,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/stray/ice_prison_spawn

# fx
particle minecraft:snowflake ~ ~1 ~ .3 .5 .3 .05 10
particle minecraft:block{block_state:"minecraft:ice"} ~ ~1 ~ .3 .5 .3 0 10

# cd
scoreboard players operation @s fkbm.cd1 = #20 fktool
