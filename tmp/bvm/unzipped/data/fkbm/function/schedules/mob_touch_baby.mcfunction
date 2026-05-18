execute if score #BabyTouchLoop fkbm.options matches 0 run function fkbm:systems/mobs/touch_list_baby

# get next loop
execute unless score #BabyTouchLoop fkbm.options matches 1.. run scoreboard players operation #BabyTouchLoop fkbm.options = BabyMobModifyFrequency fkbm.options
scoreboard players remove #BabyTouchLoop fkbm.options 1


schedule function fkbm:schedules/mob_touch_baby 1s
