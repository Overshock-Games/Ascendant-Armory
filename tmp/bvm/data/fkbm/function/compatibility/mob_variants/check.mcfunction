## Mob Variants
## by Purple_Zombie
scoreboard players set Mob_Variants fkbm.compat 0
execute if entity @n[tag=Old2] run return run scoreboard players set Mob_Variants fkbm.compat 1
execute if entity @n[tag=Old3] run return run scoreboard players set Mob_Variants fkbm.compat 1
execute if entity @n[tag=CustomMobVariant] run return run scoreboard players set Mob_Variants fkbm.compat 1
execute store success score #tmp fkbm.compat run team list mobvariants_player
execute if score #tmp fkbm.compat matches 1 run return run scoreboard players set Mob_Variants fkbm.compat 1
