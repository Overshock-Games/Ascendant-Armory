## Better Nether Mobs
## by MC Silver
scoreboard players set Better_Nether_Mobs fkbm.compat 0
execute if score #mcs_nether_mobs mcs_nether_mobs_install_main matches 0.. run return run scoreboard players set Better_Nether_Mobs fkbm.compat 1
execute if score #mcs_nether_mobs mcs_nether_mobs..allow.range_piglin_brute.spawning matches 0.. run return run scoreboard players set Better_Nether_Mobs fkbm.compat 1
execute if score #mcs_nether_mobs mcs_nether_mobs..allow.warped_creeper.spawning matches 0.. run return run scoreboard players set Better_Nether_Mobs fkbm.compat 1
