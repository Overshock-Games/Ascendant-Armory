# canceler
execute if score #IndividualNightmare fkbm.options matches ..0 run return 0

# nightmare attributes
scoreboard players operation #Nightmare.Health fkbm.options = Nightmare.MobBuff.Health fkbm.options
scoreboard players operation #Nightmare.Health fkbm.options *= #IndividualNightmare fkbm.options
execute store result storage fkbm:data nightmare.health float 0.01 run scoreboard players get #Nightmare.Health fkbm.options
scoreboard players operation #Nightmare.Damage fkbm.options = Nightmare.MobBuff.Damage fkbm.options
scoreboard players operation #Nightmare.Damage fkbm.options *= #IndividualNightmare fkbm.options
execute store result storage fkbm:data nightmare.damage float 0.01 run scoreboard players get #Nightmare.Damage fkbm.options
scoreboard players operation #Nightmare.Speed fkbm.options = Nightmare.MobBuff.Speed fkbm.options
scoreboard players operation #Nightmare.Speed fkbm.options *= #IndividualNightmare fkbm.options
execute store result storage fkbm:data nightmare.speed float 0.001 run scoreboard players get #Nightmare.Speed fkbm.options

# apply
function fkbm:systems/nightmare/apply_attr with storage fkbm:data nightmare

# set new health
execute store result storage fkbm:data tmp double 1 run attribute @s minecraft:max_health get 1
data modify entity @s Health set from storage fkbm:data tmp
