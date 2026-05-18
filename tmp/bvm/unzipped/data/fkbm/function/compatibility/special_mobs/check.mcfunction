## Special Mobs
## by paul90317
scoreboard players set Special_Mobs fkbm.compat 0
execute unless score #tmp spm.spawned matches 0.. run return run scoreboard players set Special_Mobs fkbm.compat 1
execute if score #world spm.spawn.tick matches 0.. run return run scoreboard players set Special_Mobs fkbm.compat 1
execute if score #world spm.tick3 matches 0.. run return run scoreboard players set Special_Mobs fkbm.compat 1
