# target
tag @a[gamemode=!creative,gamemode=!spectator,distance=..8,sort=nearest,limit=3] add fkbm.enderman.vortexed
tag @a[tag=fkbm.enderman.vortexed] add fkbm.enderman.vortexed.effect

# spread
spreadplayers ~ ~ 2 10 false @a[tag=fkbm.enderman.vortexed,distance=..8]
schedule function fkbm:systems/mobs/loop/skill/enderman/vortex_anim 2t
tag @a[tag=fkbm.enderman.vortexed] remove fkbm.enderman.vortexed

scoreboard players set @s fkbm.var 0
