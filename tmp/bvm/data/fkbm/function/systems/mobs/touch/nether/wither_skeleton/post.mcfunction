execute if entity @s[tag=fkbm.wither_skeleton.bow] run function fkbm:systems/mobs/touch/skill/wither_skeleton/bow
execute if entity @s[tag=fkbm.wither_skeleton.sword] run function fkbm:systems/mobs/touch/skill/wither_skeleton/sword
execute if entity @s[tag=fkbm.wither_skeleton.shield] run function fkbm:systems/mobs/touch/skill/wither_skeleton/shield
execute if entity @s[tag=fkbm.wither_skeleton.thorns] run function fkbm:systems/mobs/touch/skill/wither_skeleton/thorns
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:stone_sword
scoreboard players set @s[tag=fkbm.wither_skeleton.shield] fkbm.cd1 0
scoreboard players set @s[tag=fkbm.wither_skeleton.darkness] fkbm.cd2 0
scoreboard players set @s[tag=fkbm.wither_skeleton.flying_blades] fkbm.cd3 0
