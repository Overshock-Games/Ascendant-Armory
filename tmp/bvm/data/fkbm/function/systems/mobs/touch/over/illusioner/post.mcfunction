execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:bow
execute if entity @s[tag=fkbm.illusioner.enchantedbow] run function fkbm:systems/mobs/touch/skill/illusioner/enchanted_bow
scoreboard players set @s[tag=fkbm.illusioner.heal] fkbm.cd1 0
