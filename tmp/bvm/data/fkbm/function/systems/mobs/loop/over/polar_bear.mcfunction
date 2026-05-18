# angry
execute as @s[tag=fkbm.polar_bear.angry] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..24] run data merge entity @s {anger_end_time:200}
execute as @s[tag=fkbm.polar_bear.angry] if entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run data modify entity @s angry_at set from entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] UUID

tag @s add fkbm.looped
