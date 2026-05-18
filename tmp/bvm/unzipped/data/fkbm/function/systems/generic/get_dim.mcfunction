execute at @s if dimension minecraft:overworld run return 0
execute at @s if dimension minecraft:the_nether run return -1
execute at @s if dimension minecraft:the_end run return 1

# error/custom
return -2
