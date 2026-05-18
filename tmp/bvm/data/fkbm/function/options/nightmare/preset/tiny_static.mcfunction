scoreboard players set NightmareBaseLvl fkbm.options 10
scoreboard players set NightmareAutoLvlUp fkbm.options 0
scoreboard players set NightmareMaxLvl fkbm.options 10

tellraw @s ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Tiny Static Nightmare preset applied! Mobs now have +50% health, +20% damage, +2% speed (default values).","color":"red"}]
