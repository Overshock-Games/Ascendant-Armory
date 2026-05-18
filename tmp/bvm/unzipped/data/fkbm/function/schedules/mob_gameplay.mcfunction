# gameplay
execute if score #BaseDifficulty fkbm.options matches 1.. if score #GameplayLoop fkbm.options matches 0 run function fkbm:systems/mobs/loop_list

# get next loop
execute unless score #GameplayLoop fkbm.options matches 1.. run scoreboard players operation #GameplayLoop fkbm.options = MobGameplayLatency fkbm.options
scoreboard players remove #GameplayLoop fkbm.options 1


schedule function fkbm:schedules/mob_gameplay 1s
