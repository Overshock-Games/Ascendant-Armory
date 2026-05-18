# fx
playsound minecraft:entity.vindicator.ambient hostile @a[distance=..16] ~ ~ ~ 3 .8 .2
playsound minecraft:entity.vindicator.death hostile @a[distance=..16] ~ ~ ~ 3 .5 .2
particle minecraft:angry_villager ~ ~1.8 ~ .2 .1 .2 0 3

# effect
effect give @s minecraft:poison 8 2 true

execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:speed 2 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:speed 4 0 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:speed 6 0 true

execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:strength 2 0 false
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:strength 4 0 false
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:strength 6 0 false

# cd
scoreboard players operation @s fkbm.cd1 = #15 fktool
