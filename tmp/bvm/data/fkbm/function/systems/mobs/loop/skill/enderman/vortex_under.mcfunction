# target
tag @a[gamemode=!creative,gamemode=!spectator,distance=..8,sort=nearest,limit=3] add fkbm.enderman.vortexed
tag @a[tag=fkbm.enderman.vortexed] add fkbm.enderman.vortexed.effect

# get y pos to restrict spread
execute store result score #tmp fkbm.var run data get entity @s Pos[1]
$scoreboard players add #tmp fkbm.var $(tp_vertical_range)
$scoreboard players set #tmp2 fkbm.var $(max_y)
execute if score #tmp fkbm.var >= #tmp2 fkbm.var run scoreboard players operation #tmp fkbm.var = #tmp2 fkbm.var

# construct storage
execute store result storage fkbm:data tmpobj.max_y double 1 run scoreboard players get #tmp fkbm.var
$data modify storage fkbm:data tmpobj.max_z set value $(spread_range)

# spread
function fkbm:systems/mobs/loop/skill/enderman/vortex_spread with storage fkbm:data tmpobj
schedule function fkbm:systems/mobs/loop/skill/enderman/vortex_anim 2t
tag @a[tag=fkbm.enderman.vortexed] remove fkbm.enderman.vortexed

scoreboard players set @s fkbm.var 0
