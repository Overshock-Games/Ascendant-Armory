# use: tellraw @a {"storage":"fkbm:text","nbt":"log.test","interpret":true}

# nightmare
data modify storage fkbm:text nightmare.level.private set value ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"\u2620 ","color":"dark_red"},{"text":"Nightmare Level ","color":"gray"},{"score":{"name":"@s","objective":"fkbm.nightmare.lvl"},"color":"gray"},{"text":" \u2620","color":"dark_red"}]
data modify storage fkbm:text nightmare.level.global set value ["",{"text":"\u2620 ","color":"dark_red"},{"text":"Nightmare Level ","color":"gray"},{"score":{"name":"NightmareBaseLvl","objective":"fkbm.options"},"color":"gray"},{"text":" \u2620","color":"dark_red"}]

# log
data modify storage fkbm:text totem.found_head set value ["",{"storage":"fkbm:text","nbt":"project.print_short","interpret":true},{"selector":"@s","color":"red"},{"text":" -> found player_head","color":"red"}]
data modify storage fkbm:text totem.unknown_mat set value ["",{"storage":"fkbm:text","nbt":"project.print_short","interpret":true},{"selector":"@s","color":"red"},{"text":" -> unknown base material","color":"red"}]
data modify storage fkbm:text totem.unlit set value ["",{"storage":"fkbm:text","nbt":"project.print_short","interpret":true},{"selector":"@s","color":"red"},{"text":" -> base material unlit","color":"red"}]
data modify storage fkbm:text totem.unknown_mat_unlit set value ["",{"storage":"fkbm:text","nbt":"project.print_short","interpret":true},{"selector":"@s","color":"red"},{"text":" -> unknown base material or unlit","color":"red"}]
