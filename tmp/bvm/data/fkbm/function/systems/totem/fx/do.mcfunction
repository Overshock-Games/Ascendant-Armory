# checks
execute unless block ~ ~-.7 ~ #fkbm:totem/base[lit=true] run return run tellraw @a[tag=fkdev] {"storage":"fkbm:text","nbt":"totem.unknown_mat_unlit","interpret":true}
execute if block ~ ~-.7 ~ #fkbm:totem/base[lit=true] run scoreboard players set #continue fkbm.options 1

# fx
particle minecraft:soul ~ ~.3 ~ .2 .2 .2 0 1
particle minecraft:infested ~ ~.25 ~ .05 0 .05 0 1

# square flames
execute align xyz run particle minecraft:soul_fire_flame ~.5 ~.1 ~.1 .2 0 0 0 2
execute align xyz run particle minecraft:soul_fire_flame ~.1 ~.1 ~.5 0 0 .2 0 2
execute align xyz positioned ~1 ~ ~1 run particle minecraft:soul_fire_flame ~-.5 ~.1 ~-.1 .2 0 0 0 2
execute align xyz positioned ~1 ~ ~1 run particle minecraft:soul_fire_flame ~-.1 ~.1 ~-.5 0 0 .2 0 2

# sounds
execute if entity @p[distance=..8] if predicate fkbmtool:rng/05 run playsound minecraft:block.sculk_catalyst.bloom ambient @a[distance=..8] ~ ~.2 ~ 2 .5 1
execute if entity @p[distance=..8] if predicate fkbmtool:rng/03 run playsound minecraft:block.sculk_vein.fall ambient @a[distance=..8] ~ ~.2 ~ .6 .5 1
execute if entity @p[distance=..8] if predicate fkbmtool:rng/03 run playsound minecraft:entity.spider.step ambient @a[distance=..8] ~ ~.2 ~ .1 .5 1

# aoe limit particles
execute run function fkbm:systems/totem/fx/limit
