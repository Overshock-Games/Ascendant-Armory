advancement revoke @s only fkbm:mobs/enderman_lookfreeze

function fkbm:systems/difficulty/set_individual

execute as @e[type=minecraft:enderman,tag=fkbm.enderman.lookfreeze,distance=..64,sort=nearest,limit=3] at @s anchored eyes facing entity @p eyes positioned ^ ^.25 ^.5 run function fkbm:systems/mobs/loop/skill/enderman/lookfreeze_particle

effect give @s minecraft:slowness 1 3 true
effect give @s minecraft:darkness 3 0 true
