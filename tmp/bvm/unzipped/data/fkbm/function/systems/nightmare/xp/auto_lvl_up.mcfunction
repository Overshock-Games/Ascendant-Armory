# passive gain
execute if score NightmareLvlUpTimer fkbm.options matches 1.. run scoreboard players operation @a[gamemode=!creative,gamemode=!spectator] fkbm.nightmare.xp += NightmareLvlUpTimer fkbm.options

# clamp
execute as @a run function fkbm:systems/nightmare/xp/clamp_lvl

# lvl up
execute as @a[scores={fkbm.nightmare.xp=100..}] unless score @s fkbm.nightmare.force matches 0.. run function fkbm:systems/nightmare/xp/lvl_up
