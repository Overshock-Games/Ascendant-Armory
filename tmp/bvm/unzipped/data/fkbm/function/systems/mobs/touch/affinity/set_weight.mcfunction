# reset
scoreboard players set #tmp.affinity fkbm.options 0

# additionnal
execute if score Affinity.Weight.Weak fkbm.options matches 1.. run scoreboard players operation #tmp.affinity fkbm.options += #70 fktool
execute if score Affinity.Weight.Health fkbm.options matches 1.. run scoreboard players operation #tmp.affinity fkbm.options += #8 fktool
execute if score Affinity.Weight.Resistant fkbm.options matches 1.. run scoreboard players operation #tmp.affinity fkbm.options += #6 fktool
execute if score Affinity.Weight.Heavy fkbm.options matches 1.. run scoreboard players operation #tmp.affinity fkbm.options += #6 fktool
execute if score Affinity.Weight.Strong fkbm.options matches 1.. run scoreboard players operation #tmp.affinity fkbm.options += #5 fktool
execute if score Affinity.Weight.Fast fkbm.options matches 1.. run scoreboard players operation #tmp.affinity fkbm.options += #5 fktool

# storage
data modify storage fkbm:data affinity.weight.min set value 1
execute store result storage fkbm:data affinity.weight.max int 1 run scoreboard players get #tmp.affinity fkbm.options
