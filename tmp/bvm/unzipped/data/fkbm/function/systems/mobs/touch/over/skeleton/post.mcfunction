execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/80 run item replace entity @s weapon.mainhand with minecraft:bow
execute if entity @s[tag=fkbm.skeleton.spear] run function fkbm:systems/mobs/touch/skill/skeleton/spear
execute if score SkeletonFireResistance fkbm.options matches 1..2 if entity @s[tag=fkbm.skeleton.fireresist] run function fkbm:systems/mobs/touch/skill/skeleton/fire_resist
execute if entity @s[tag=fkbm.skeleton.shield] run item replace entity @s weapon.offhand with minecraft:shield[damage=316,custom_name={"italic":false,"text":"Buckler"},item_name={"italic":false,"text":"Buckler"}]
scoreboard players set @s[tag=fkbm.skeleton.shield] fkbm.cd1 0
