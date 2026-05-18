execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:bow
execute if score StrayFireResistance fkbm.options matches 1..2 as @s[tag=fkbm.stray.fireresist] run function fkbm:systems/mobs/touch/skill/stray/fire_resist
scoreboard players set @s[tag=fkbm.stray.frozenthorns] fkbm.cd2 0
scoreboard players set @s[tag=fkbm.stray.iceprison] fkbm.cd1 0
