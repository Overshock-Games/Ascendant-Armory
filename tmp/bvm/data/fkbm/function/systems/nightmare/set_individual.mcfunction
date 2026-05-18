# clamp nigthmare difficulty
execute if score NightmareBaseLvl fkbm.options matches ..-1 run scoreboard players set NightmareBaseLvl fkbm.options 0
execute if score NightmareBaseLvl fkbm.options matches 101.. run scoreboard players set NightmareBaseLvl fkbm.options 100

# init
scoreboard players set #IndividualNightmare fkbm.options 0

# if no individual nightmare, copy base one
execute if score NightmareAutoLvlUp fkbm.options matches 0 run scoreboard players operation #IndividualNightmare fkbm.options = NightmareBaseLvl fkbm.options

# if individual nightmare level
execute if score NightmareAutoLvlUp fkbm.options matches 1 run scoreboard players operation #IndividualNightmare fkbm.options = @s fkbm.nightmare.lvl

# if individual, fixed nightmare level
execute if score @s fkbm.nightmare.force matches 0.. run scoreboard players operation #IndividualNightmare fkbm.options = @s fkbm.nightmare.force
