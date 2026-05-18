advancement revoke @s only fkbm:mobs/creeper_unstable

execute as @n[type=minecraft:creeper,tag=fkbm.creeper.unstable,distance=..80,predicate=fkbm:generic/hurttime] at @s run function fkbm:systems/mobs/loop/skill/creeper/unstable
