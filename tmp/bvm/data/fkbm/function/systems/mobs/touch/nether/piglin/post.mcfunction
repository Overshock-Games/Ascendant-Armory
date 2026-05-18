# canceler
execute if entity @s[tag=fkbm.baby] run return 0

execute if entity @s[tag=fkbm.piglin.tracker] run function fkbm:systems/mobs/touch/skill/piglin/tracker
execute if entity @s[tag=fkbm.piglin.trap] run function fkbm:systems/mobs/touch/skill/piglin/trap
execute if entity @s[tag=fkbm.piglin.axe] run function fkbm:systems/mobs/touch/skill/piglin/axe
execute if predicate fkbm:generic/empty_mainhand run item replace entity @s weapon.mainhand with minecraft:crossbow
