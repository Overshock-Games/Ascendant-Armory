# wolf night attack
execute if score #BaseDifficulty fkbm.options matches 1.. if predicate fkbm:generic/time/night as @e[type=minecraft:wolf,tag=fkbm.wolf.angry] at @s unless data entity @s Owner unless data entity @s angry_at if entity @p[gamemode=!creative,gamemode=!spectator,distance=32..128] run function fkbm:systems/mobs/events/wolf_night_attack

# polar bear attack
execute if score #BaseDifficulty fkbm.options matches 1.. as @e[type=minecraft:polar_bear,tag=fkbm.polar_bear.angry] at @s run function fkbm:systems/mobs/events/polar_bear_attack

# skeleton arrows pickup



schedule function fkbm:schedules/mob_time_event 10s
