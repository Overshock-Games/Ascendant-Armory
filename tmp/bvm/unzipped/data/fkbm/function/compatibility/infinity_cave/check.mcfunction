## Infinity Cave
## by Frozytime
scoreboard players set Infinity_Cave fkbm.compat 0
execute if score #ic90 ic.const matches 90 run return run scoreboard players set Infinity_Cave fkbm.compat 1
execute if score $difficulty ic.int matches 0..9 run return run scoreboard players set Infinity_Cave fkbm.compat 1
execute if data storage ic:mob tier run return run scoreboard players set Infinity_Cave fkbm.compat 1
