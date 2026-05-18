## Mob Captains
## by PuckiSilver
scoreboard players set Mob_Captains fkbm.compat 0
execute if score #random ps-mob matches 1.. run return run scoreboard players set Mob_Captains fkbm.compat 1
execute if score .cool_down ps-mob.config matches 0.. run return run scoreboard players set Mob_Captains fkbm.compat 1
