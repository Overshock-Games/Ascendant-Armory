# check
execute store result score #tmp fkbm.var run data get entity @s Health
execute if score #tmp fkbm.var matches ..28 if score @s fkbm.cd1 matches ..0 run function fkbm:systems/mobs/loop/skill/illusioner/heal

# cd
scoreboard players operation @s[scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options
