# make the pack ignore my mobs
execute as @e[type=#fkbm:can_be_enhanced/all,tag=fkbm.touched] if predicate fkbmtool:rng/50 run tag @s add global.ignore
