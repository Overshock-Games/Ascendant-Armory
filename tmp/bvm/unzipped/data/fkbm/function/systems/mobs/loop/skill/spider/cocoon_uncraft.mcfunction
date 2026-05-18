# destroy cocoon
fill ~-2 ~-1 ~-1 ~2 ~1 ~1 minecraft:air replace minecraft:cobweb
fill ~-1 ~-2 ~-1 ~1 ~2 ~1 minecraft:air replace minecraft:cobweb
fill ~-1 ~-1 ~-2 ~1 ~1 ~2 minecraft:air replace minecraft:cobweb

# fx
particle minecraft:block{block_state:"minecraft:cobweb"} ~ ~1 ~ 2 2 2 .1 99

kill @s
