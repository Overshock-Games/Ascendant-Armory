execute at @p[distance=..8,gamemode=!creative,gamemode=!spectator] facing entity @s eyes rotated ~ 0 positioned ^ ^ ^-3 run playsound minecraft:entity.creeper.primed hostile @a[distance=..8] ~ ~ ~ 3 1 .2
execute at @p[distance=..8,gamemode=!creative,gamemode=!spectator] facing entity @s feet rotated ~ 0 positioned ^ ^ ^-3 run particle minecraft:campfire_cosy_smoke ~ ~.2 ~ .3 .1 .3 .005 3
effect give @s minecraft:speed 1 1 true

tag @s add fkbm.creeper.baited
