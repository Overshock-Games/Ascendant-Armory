## RPG Loot
## by michael9r9r
scoreboard players set RPG_Loot fkbm.compat 0
execute if score rpgloot rpgloot matches 0.. run return run scoreboard players set RPG_Loot fkbm.compat 1
execute if score rpgloot rpgloot.rng matches 0.. run return run scoreboard players set RPG_Loot fkbm.compat 1
execute if score rpgloot rpgloot.boss_var matches 0.. run return run scoreboard players set RPG_Loot fkbm.compat 1
