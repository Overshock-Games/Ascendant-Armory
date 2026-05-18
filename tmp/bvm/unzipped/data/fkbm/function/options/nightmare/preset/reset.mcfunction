scoreboard players set NightmareBaseLvl fkbm.options 0
scoreboard players set IndividualNightmareBaseLvl fkbm.options 0
scoreboard players set NightmareAutoLvlUp fkbm.options 0
scoreboard players set NightmareMaxLvl fkbm.options 100
scoreboard players set NightmareLvlUpTimer fkbm.options 1
scoreboard players set NightmareLvlUpKill fkbm.options 1

tellraw @s ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Nightmare preset reset to default (disabled)!","color":"red"}]
