# count touched players
scoreboard players set #tmp fkbm.var 0
execute as @a[distance=..12,gamemode=!creative,gamemode=!spectator,predicate=fkbm:mobs/wither_skeleton/darkness_touch] run scoreboard players add #tmp fkbm.var 1
scoreboard players operation @s fkbm.var = #tmp fkbm.var
scoreboard players reset #tmp fkbm.var

# heal
execute if score @s fkbm.var matches 1.. run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_heal

# reset
scoreboard players reset @s fkbm.var
