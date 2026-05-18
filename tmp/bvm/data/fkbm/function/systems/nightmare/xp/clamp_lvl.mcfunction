# clamp lvl
execute unless score @s fkbm.nightmare.lvl matches 0.. run scoreboard players set @s fkbm.nightmare.lvl 0
execute if score @s fkbm.nightmare.lvl matches ..-1 run scoreboard players set @s fkbm.nightmare.lvl 0
execute if score @s fkbm.nightmare.lvl matches 101.. run scoreboard players set @s fkbm.nightmare.lvl 100
execute if score @s fkbm.nightmare.lvl > NightmareMaxLvl fkbm.options run scoreboard players operation @s fkbm.nightmare.lvl = NightmareMaxLvl fkbm.options
execute if score @s fkbm.nightmare.lvl = NightmareMaxLvl fkbm.options run scoreboard players set @s fkbm.nightmare.xp 0
execute if score @s fkbm.nightmare.force matches 0.. run scoreboard players operation @s fkbm.nightmare.lvl = @s fkbm.nightmare.force

# clamp xp
execute unless score @s fkbm.nightmare.xp matches 0.. run scoreboard players set @s fkbm.nightmare.xp 0
execute if score @s fkbm.nightmare.xp matches ..-1 run scoreboard players set @s fkbm.nightmare.xp 0
execute if score @s fkbm.nightmare.xp matches 101.. run scoreboard players set @s fkbm.nightmare.xp 100
