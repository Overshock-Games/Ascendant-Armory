advancement revoke @s only fkbm:mobs/drowned_hit_slow
function fkbm:systems/difficulty/set_individual

# fx
execute as @e[type=minecraft:drowned,tag=fkbm.drowned.hitslow,distance=..12] at @s run playsound minecraft:entity.drowned.death_water hostile @a[distance=..16] ~ ~ ~ 1 .7 .2
execute as @e[type=minecraft:drowned,tag=fkbm.drowned.hitslow,distance=..12] at @s run playsound minecraft:entity.ghast.hurt hostile @a[distance=..16] ~ ~ ~ .2 .5 .2

# slow player
execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:slowness 1 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:slowness 1 1 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:slowness 1 2 true

# speed drowned
execute if score #IndividualDiff fkbm.options matches 1 run effect give @e[type=minecraft:drowned,tag=fkbm.drowned.hitslow,distance=..12,predicate=fkbm:generic/in_water/feet] minecraft:speed 5 1 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @e[type=minecraft:drowned,tag=fkbm.drowned.hitslow,distance=..12,predicate=fkbm:generic/in_water/feet] minecraft:speed 5 3 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @e[type=minecraft:drowned,tag=fkbm.drowned.hitslow,distance=..12,predicate=fkbm:generic/in_water/feet] minecraft:speed 5 5 true
