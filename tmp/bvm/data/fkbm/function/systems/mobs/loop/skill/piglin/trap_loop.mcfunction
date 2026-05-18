execute at @a as @e[type=minecraft:area_effect_cloud,tag=fkbm.piglin.trap,distance=..32] at @s run function fkbm:systems/mobs/loop/skill/piglin/trap_life

execute if entity @n[type=minecraft:area_effect_cloud,tag=fkbm.piglin.trap] run schedule function fkbm:systems/mobs/loop/skill/piglin/trap_loop 5t