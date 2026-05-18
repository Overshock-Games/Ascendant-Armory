execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:golden_sword
execute if entity @s[tag=fkbm.zombified_piglin.infected] run item replace entity @s weapon.mainhand with minecraft:red_mushroom
execute if entity @s[tag=fkbm.zombified_piglin.explosive] run item replace entity @s armor.head with minecraft:shroomlight
execute if entity @s[tag=fkbm.zombified_piglin.explosive] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=fkbm.zombified_piglin.aggressive] run function fkbm:systems/mobs/touch/skill/zombified_piglin/aggressive
scoreboard players set @s[tag=fkbm.zombified_piglin.explosive] fkbm.var 0
scoreboard players set @s[tag=fkbm.zombified_piglin.infected] fkbm.cd1 0
