## Upgraded Mobs
## by badooga
scoreboard players set Upgraded_Mobs fkbm.compat 0
execute store success score Upgraded_Mobs fkbm.compat run scoreboard players set #bvm.test upgradedmobs.health 1
execute if score Upgraded_Mobs fkbm.compat matches 1 run return 1
execute if score @n upgradedmobs.clock matches 0.. run return run scoreboard players set Upgraded_Mobs fkbm.compat 1
execute if entity @n[tag=upgradedmobs.all.speed] run return run scoreboard players set Upgraded_Mobs fkbm.compat 1
