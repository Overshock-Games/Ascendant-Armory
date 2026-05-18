# water frozener
fill ~ ~-1 ~-1 ~ ~-1 ~1 minecraft:ice replace minecraft:water
fill ~-1 ~-1 ~ ~1 ~-1 ~ minecraft:ice replace minecraft:water

# fx
particle minecraft:dust_color_transition{from_color:[.5f,.5f,1f],scale:1.5f,to_color:[1f,1f,1f]} ~ ~.05 ~ 1 .05 1 0 10
playsound minecraft:block.amethyst_block.fall hostile @a[distance=..16] ~ ~ ~ .5 .5 .5
