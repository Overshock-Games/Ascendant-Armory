# fire bomb
effect give @s minecraft:fire_resistance 10 0 true
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire keep
fill ~-2 ~-1 ~ ~2 ~1 ~ minecraft:fire keep
fill ~ ~-1 ~-2 ~ ~1 ~2 minecraft:fire keep

# fx
particle minecraft:lava ~ ~.5 ~ .5 .2 .5 0 10
particle minecraft:campfire_cosy_smoke ~ ~2 ~ 1 .8 1 0 30
playsound minecraft:entity.ghast.shoot hostile @a[distance=..32] ~ ~ ~ .9 .7 .5

tag @s add fkbm.skeleton.flamed
