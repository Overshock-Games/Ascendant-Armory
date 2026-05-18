# chase
execute if entity @p[distance=..5,gamemode=!creative,gamemode=!spectator] run data modify entity @s angry_at set from entity @p[distance=..5,gamemode=!creative,gamemode=!spectator] UUID
execute if entity @p[distance=..5,gamemode=!creative,gamemode=!spectator] run data modify entity @s anger_end_time set value 100

# fx
execute if predicate fkbmtool:rng/30 run playsound minecraft:entity.zombified_piglin.angry hostile @a[distance=..16] ~ ~ ~ 1 1.6 .3
execute if predicate fkbmtool:rng/10 run playsound minecraft:entity.ghast.death hostile @a[distance=..16] ~ ~ ~ .6 .7 .3
execute anchored eyes positioned ^ ^ ^ run particle minecraft:block{block_state:"minecraft:red_mushroom_block"} ~ ~ ~ .2 .2 .2 .01 5
