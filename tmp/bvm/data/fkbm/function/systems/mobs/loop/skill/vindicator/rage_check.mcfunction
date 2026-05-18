advancement revoke @s only fkbm:mobs/vindicator_rage
function fkbm:systems/difficulty/set_individual

execute as @e[type=minecraft:vindicator,tag=fkbm.vindicator.rage,distance=..8,predicate=fkbm:generic/hurttime,sort=nearest,limit=3] at @s run function fkbm:systems/mobs/loop/skill/vindicator/rage
