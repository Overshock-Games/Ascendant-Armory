execute if entity @s[tag=fkbm.piglin_brute.armored] run function fkbm:systems/mobs/touch/skill/piglin_brute/armored
execute if entity @s[tag=fkbm.piglin_brute.shield] run function fkbm:systems/mobs/touch/skill/piglin_brute/shield
execute if entity @s[tag=fkbm.piglin_brute.berserk] run function fkbm:systems/mobs/touch/skill/piglin_brute/berserk
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/75 run item replace entity @s weapon.mainhand with minecraft:golden_axe
execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:golden_sword
