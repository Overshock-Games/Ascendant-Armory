# touch
execute if score #BaseDifficulty fkbm.options matches 1.. if score #TouchLoop fkbm.options matches 0 run function fkbm:systems/mobs/touch_list

# get next loop
execute unless score #TouchLoop fkbm.options matches 1.. run scoreboard players operation #TouchLoop fkbm.options = MobModifyFrequency fkbm.options
scoreboard players remove #TouchLoop fkbm.options 1


schedule function fkbm:schedules/mob_touch 1s
