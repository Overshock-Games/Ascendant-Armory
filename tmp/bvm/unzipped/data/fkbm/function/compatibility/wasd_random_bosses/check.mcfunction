## Moar Bosses
## by WASD Build Team
scoreboard players set Wasd_Random_Bosses fkbm.compat 0
execute if score wasd.spawn_chance wasd.random_boss_setting matches 30 run return run scoreboard players set Wasd_Random_Bosses fkbm.compat 1
execute unless score #tmp wasd.rng matches 0.. run return run scoreboard players set Wasd_Random_Bosses fkbm.compat 1
