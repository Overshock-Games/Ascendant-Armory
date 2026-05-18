# get
execute store result score #CreeperFuseTmp fkbm.var run data get entity @s Fuse

# rng range
function fkbmtool:rng/get
scoreboard players operation #CreeperFuseModifier fkbm.var = Random fktool
scoreboard players operation #CreeperFuseModifier fkbm.var %= #5 fktool

# +/-
execute if score Random fktool matches 00..050 run scoreboard players operation #CreeperFuseTmp fkbm.var += #CreeperFuseModifier fkbm.var
execute if score Random fktool matches 51..100 run scoreboard players operation #CreeperFuseTmp fkbm.var -= #CreeperFuseModifier fkbm.var

# store
execute store result storage fkbm:data tmp int 1 run scoreboard players get #CreeperFuseTmp fkbm.var
data modify entity @s Fuse set from storage fkbm:data tmp
