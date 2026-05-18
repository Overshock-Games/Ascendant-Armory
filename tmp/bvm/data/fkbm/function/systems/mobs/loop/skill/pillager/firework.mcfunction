# load fireworks in crossbow
execute if entity @s[tag=!fkbm.pillager.multishot] run item modify entity @s weapon.mainhand fkbm:mobs/pillager/firework
execute if entity @s[tag=fkbm.pillager.multishot] run item modify entity @s weapon.mainhand fkbm:mobs/pillager/fireworks

# fx
playsound minecraft:item.flintandsteel.use hostile @a[distance=..16] ~ ~ ~ 1 1 .5
execute anchored eyes positioned ^ ^-.3 ^.3 run particle minecraft:lava ~ ~ ~ .05 .05 .05 0 1

# cd
scoreboard players operation #tmp fkbm.cd1 = #20 fktool
execute if score #IndividualDiff fkbm.options matches 2 run scoreboard players operation #tmp fkbm.cd1 /= #5 fktool
execute if score #IndividualDiff fkbm.options matches 3 run scoreboard players operation #tmp fkbm.cd1 /= #3 fktool
scoreboard players operation #tmp2 fkbm.cd1 = #20 fktool
scoreboard players operation #tmp2 fkbm.cd1 -= #tmp fkbm.cd1
scoreboard players operation @s fkbm.cd1 = #tmp2 fkbm.cd1
