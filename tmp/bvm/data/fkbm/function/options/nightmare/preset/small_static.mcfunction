scoreboard players set NightmareBaseLvl fkbm.options 25
scoreboard players set NightmareAutoLvlUp fkbm.options 0
scoreboard players set NightmareMaxLvl fkbm.options 25

tellraw @s ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Small Static Nightmare preset applied! Mobs now have +125% health, +50% damage, +5% speed (default values).","color":"red"}]
