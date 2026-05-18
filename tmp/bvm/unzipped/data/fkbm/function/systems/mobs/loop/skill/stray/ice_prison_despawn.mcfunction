# destroy cocoon
fill ~ ~2 ~ ~ ~2 ~ minecraft:air replace minecraft:packed_ice
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:air replace minecraft:packed_ice
fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:packed_ice
fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:blue_ice
fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:powder_snow

# fx
particle minecraft:block{block_state:"minecraft:ice"} ~ ~1 ~ 1 1 1 .1 30
particle minecraft:block{block_state:"minecraft:packed_ice"} ~ ~1 ~ 1 1 1 .1 20

kill @s
