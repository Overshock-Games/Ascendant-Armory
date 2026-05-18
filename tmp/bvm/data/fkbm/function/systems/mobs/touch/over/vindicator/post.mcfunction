execute if entity @s[tag=fkbm.vindicator.swordman,tag=fkbm.vindicator.worker] run tag @s remove fkbm.vindicator.worker
execute if entity @s[tag=fkbm.vindicator.swordman] run function fkbm:systems/mobs/touch/skill/vindicator/swordman
execute if entity @s[tag=fkbm.vindicator.worker] run function fkbm:systems/mobs/touch/skill/vindicator/worker
execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:iron_axe
scoreboard players set @s[tag=fkbm.vindicator.rage] fkbm.cd1 0
