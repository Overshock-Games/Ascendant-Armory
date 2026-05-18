# fx
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..80] if entity @s[nbt={anger_end_time:-1L}] run particle minecraft:dust_color_transition{from_color:[.8f,.1f,.1f],scale:2f,to_color:[.8f,.2f,.2f]} ~ ~1 ~ .6 .6 .6 0 20
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..80] if entity @s[nbt={anger_end_time:-1L}] run playsound minecraft:entity.polar_bear.warning hostile @a[distance=..80] ~ ~ ~ 2 .8 .3

# aggro
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..80] run data merge entity @s {anger_end_time:200}
execute if entity @p[gamemode=!creative,gamemode=!spectator,distance=..80] run data modify entity @s angry_at set from entity @p[gamemode=!creative,gamemode=!spectator,distance=..80] UUID
