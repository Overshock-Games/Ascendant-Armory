# alpha chance (get all affinity buffs)
execute run function fkbmtool:rng/get

execute if score #3 fktool >= Random fktool run tag @s add fkbm.alpha

# affinity buffs
execute if entity @s[tag=fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/alpha
execute if entity @s[tag=!fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/touch

# canceler
execute if entity @s[tag=!fkbm.alpha] run return 0

# scale
attribute @s minecraft:scale modifier add fkbm.alpha 0.20 add_multiplied_base

# spe
attribute @s minecraft:water_movement_efficiency modifier add fkbm.alpha 1 add_value
attribute @s minecraft:movement_speed modifier add fkbm.alpha 0.03 add_value
effect give @s minecraft:fire_resistance infinite 0 true
