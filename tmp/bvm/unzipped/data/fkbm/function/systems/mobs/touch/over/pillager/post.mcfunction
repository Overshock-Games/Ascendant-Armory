execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:crossbow
execute if entity @s[tag=fkbm.pillager.quickcharge] run function fkbm:systems/mobs/touch/skill/pillager/enchant_quickcharge
execute if entity @s[tag=fkbm.pillager.multishot] run function fkbm:systems/mobs/touch/skill/pillager/enchant_multishot
execute if entity @s[tag=fkbm.pillager.quickcharge,tag=fkbm.pillager.multishot] run function fkbm:systems/mobs/touch/skill/pillager/enchant_illegal
scoreboard players set @s[tag=fkbm.pillager.firework] fkbm.cd1 0
