scoreboard players set NightmareBaseLvl fkbm.options 75
scoreboard players set NightmareAutoLvlUp fkbm.options 0
scoreboard players set NightmareMaxLvl fkbm.options 75

tellraw @s ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Large Static Nightmare preset applied! Mobs now have +375% health, +150% damage, +15% speed (default values).","color":"red"}]
