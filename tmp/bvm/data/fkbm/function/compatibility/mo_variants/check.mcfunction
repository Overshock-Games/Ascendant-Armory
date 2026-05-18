## Mo Variants
## by Rainy Realm Creations
scoreboard players set Mo_Variants fkbm.compat 0
execute if score mo-var rrc.init matches 0.. run return run scoreboard players set Mo_Variants fkbm.compat 1
execute if score #gettime mo-var.timetrack matches -24000.. run return run scoreboard players set Mo_Variants fkbm.compat 1
execute if score knightmax mo-var.cm_mob matches 0.. run return run scoreboard players set Mo_Variants fkbm.compat 1
