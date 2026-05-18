advancement revoke @s only fkbm:mobs/husk_hit_slow
function fkbm:systems/difficulty/set_individual

execute as @e[type=minecraft:husk,tag=fkbm.husk.hitslow,distance=..12] at @s run playsound minecraft:entity.ghast.hurt hostile @a[distance=..16] ~ ~ ~ 1 .7 .2

# grab player
execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:slowness 1 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:slowness 1 1 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:slowness 1 2 true

# rage
effect give @e[type=minecraft:husk,tag=fkbm.husk.hitslow,distance=..12,predicate=!fkbm:mobs/is_baby] minecraft:speed 5 3 true
