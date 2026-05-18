# break
fill ~ ~ ~ ~ ~-2 ~ air destroy

# fx
particle minecraft:dragon_breath ~ ~-1 ~ .1 .8 .1 0 5

# cd
execute if score #IndividualDiff fkbm.options matches 1 run scoreboard players set @s fkbm.cd1 5
execute if score #IndividualDiff fkbm.options matches 2 run scoreboard players set @s fkbm.cd1 3
execute if score #IndividualDiff fkbm.options matches 3 run scoreboard players set @s fkbm.cd1 1
