scoreboard players set NightmareBaseLvl fkbm.options 100
scoreboard players set NightmareAutoLvlUp fkbm.options 0
scoreboard players set NightmareMaxLvl fkbm.options 100

tellraw @s ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Max Static Nightmare preset applied! Mobs now have +500% health, +200% damage, +20% speed (default values).","color":"red"}]
