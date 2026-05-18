## Moar Bosses
## by WASD Build Team
scoreboard players set Wasd_Moar_Bosses fkbm.compat 0
execute if score wasd_bosses wasd_data_packs matches 1 run return run scoreboard players set Wasd_Moar_Bosses fkbm.compat 1
execute if score bosses w.bosses_setting matches 1 run return run scoreboard players set Wasd_Moar_Bosses fkbm.compat 1
execute if score max_bosses w.bosses_setting matches 1.. run return run scoreboard players set Wasd_Moar_Bosses fkbm.compat 1
