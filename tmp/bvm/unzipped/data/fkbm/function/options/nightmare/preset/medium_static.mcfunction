scoreboard players set NightmareBaseLvl fkbm.options 50
scoreboard players set NightmareAutoLvlUp fkbm.options 0
scoreboard players set NightmareMaxLvl fkbm.options 50

tellraw @s ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Medium Static Nightmare preset applied! Mobs now have +250% health, +100% damage, +10% speed (default values).","color":"red"}]
