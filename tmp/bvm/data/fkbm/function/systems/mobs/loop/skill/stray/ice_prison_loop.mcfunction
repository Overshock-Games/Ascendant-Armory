execute as @e[type=minecraft:marker,tag=fkbm.stray.ice_prison] at @s unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run function fkbm:systems/mobs/loop/skill/stray/ice_prison_despawn

execute at @e[type=minecraft:marker,tag=fkbm.stray.ice_prison] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run schedule function fkbm:systems/mobs/loop/skill/stray/ice_prison_loop 5t replace
