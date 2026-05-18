advancement revoke @s only fkbm:mobs/piglin_brute_berserk

function fkbm:systems/difficulty/set_individual

execute if predicate fkbmtool:rng/30 as @n[type=minecraft:piglin_brute,tag=fkbm.piglin_brute.berserk,scores={fkbm.cd2=..0},distance=..8] at @s run function fkbm:systems/mobs/loop/skill/piglin_brute/berserk
