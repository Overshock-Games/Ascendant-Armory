scoreboard players set NightmareBaseLvl fkbm.options 0
scoreboard players set NightmareAutoLvlUp fkbm.options 1
scoreboard players set NightmareMaxLvl fkbm.options 10
scoreboard players set NightmareLvlUpTimer fkbm.options 1
scoreboard players set NightmareLvlUpKill fkbm.options 1

tellraw @s ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Tiny Progressive Nightmare preset applied! Mobs will grow over time to +50% health, +20% damage, +2% speed (default values).","color":"red"}]
