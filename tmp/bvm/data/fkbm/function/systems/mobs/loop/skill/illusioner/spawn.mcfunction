# effects
particle minecraft:campfire_cosy_smoke ~ ~1 ~ .4 .6 .4 0 30
playsound minecraft:entity.illusioner.mirror_move hostile @s ~ ~ ~ 1 1
playsound minecraft:entity.illusioner.hurt hostile @s ~ ~ ~ 1 .7

# spawn replace
summon minecraft:illusioner ~ ~ ~ {Tags:["fkbm.touched","fkbm.illusioner.chance"]}
execute as @n[type=minecraft:illusioner,distance=..1] at @s run function fkbm:systems/mobs/touch/modify {mob:"illusioner",dim:"over"}

# kill init mob
tag @e[type=#fkbm:illusioner_can_replace,distance=..32] add fkbm.touched
tp ~ -200 ~
