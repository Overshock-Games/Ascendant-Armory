# heal
execute if score #IndividualDiff fkbm.options matches 1 run effect give @s minecraft:instant_health 1 0 true
execute if score #IndividualDiff fkbm.options matches 2 run effect give @s minecraft:instant_health 3 0 true
execute if score #IndividualDiff fkbm.options matches 3 run effect give @s minecraft:instant_health 5 0 true

# fx
particle minecraft:heart ~ ~1 ~ .3 .5 .3 50 5
playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 .7
playsound minecraft:entity.illusioner.ambient hostile @a[distance=..16] ~ ~ ~ 2 1

# cd
scoreboard players operation @s fkbm.cd1 = #20 fktool
