# tp
function fkbmtool:rng/get
execute if score Random fktool matches 000..020 facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] eyes rotated ~ 0 if block ^03 ^ ^2 minecraft:air run tp @s ^03 ^ ^2
execute if score Random fktool matches 021..050 facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] eyes rotated ~ 0 if block ^03 ^ ^0 minecraft:air run tp @s ^03 ^ ^0
execute if score Random fktool matches 051..080 facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] eyes rotated ~ 0 if block ^-3 ^ ^0 minecraft:air run tp @s ^-3 ^ ^0
execute if score Random fktool matches 081..100 facing entity @p[gamemode=!creative,gamemode=!spectator,distance=..48] eyes rotated ~ 0 if block ^-3 ^ ^2 minecraft:air run tp @s ^-3 ^ ^2

# fx
particle minecraft:poof ~ ~.4 ~ .2 .1 .2 .1 5
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..48] ~ ~ ~ 1 1.3

# cd
scoreboard players operation @s fkbm.cd1 = #3 fktool
