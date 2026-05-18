# growth
tag @s[tag=fkbm.baby] remove fkbm.baby
execute if predicate fkbm:mobs/is_baby run return run tag @s add fkbm.baby

# into brute
execute run function fkbmtool:rng/get

execute if score #5 fktool > Random fktool at @s run return run function fkbm:systems/mobs/touch/skill/piglin/brute
