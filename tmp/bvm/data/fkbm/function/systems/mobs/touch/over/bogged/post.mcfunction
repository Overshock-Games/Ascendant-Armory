execute if predicate fkbm:generic/empty_mainhand if predicate fkbmtool:rng/90 run item replace entity @s weapon.mainhand with minecraft:bow
execute if entity @s[tag=fkbm.bogged.infested] run effect give @s minecraft:infested infinite 0 false
execute if entity @s[tag=fkbm.bogged.armored] run function fkbm:systems/mobs/touch/skill/bogged/armored
execute if entity @s[tag=fkbm.bogged.spear] run function fkbm:systems/mobs/touch/skill/bogged/spear
execute if entity @s[tag=fkbm.bogged.shield] run item replace entity @s weapon.offhand with minecraft:shield[damage=319,custom_name={"italic":false,"text":"Rotten Buckler"},item_name={"italic":false,"text":"Rotten Buckler"}]
execute if score BoggedFireResistance fkbm.options matches 1..2 if entity @s[tag=fkbm.bogged.fireresist] run function fkbm:systems/mobs/touch/skill/bogged/fire_resist
execute if predicate fkbmtool:rng/30 run data modify entity @s sheared set value 1b
scoreboard players set @s[tag=fkbm.bogged.shield] fkbm.cd1 0
scoreboard players set @s[tag=fkbm.bogged.summoner] fkbm.cd2 0
