# fx
playsound minecraft:entity.piglin_brute.angry hostile @a[distance=..16] ~ ~ ~ 5 .8 .2
playsound minecraft:entity.piglin_brute.death hostile @a[distance=..16] ~ ~ ~ 3 .8 .2
particle minecraft:dust_color_transition{from_color:[.9f,.9f,.9f],scale:2.5f,to_color:[.6f,.6f,.6f]} ~ ~.1 ~ .2 .05 .3 0 5
particle minecraft:angry_villager ~ ~1.8 ~ .2 .1 .2 0 3

# rage (root)
execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:slowness 1 5 false
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:slowness 1 5 false
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:slowness 1 5 false

# rush
execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:speed 2 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:speed 2 1 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:speed 3 1 true

# cd
scoreboard players operation @s fkbm.cd2 = #8 fktool
