# alpha chance (get all affinity buffs)
# already set in "pre"

# affinity buffs
execute if entity @s[tag=fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/alpha
execute if entity @s[tag=!fkbm.alpha] run function fkbm:systems/mobs/touch/affinity/touch

# canceler
execute if entity @s[tag=!fkbm.alpha] run return 0

# scale
#data merge entity @s {Size:6} // already set in "pre"
attribute @s minecraft:max_health modifier add fkbm.alpha 1 add_multiplied_total
attribute @s minecraft:knockback_resistance modifier add fkbm.alpha 0.5 add_value

# spe
effect give @s minecraft:regeneration infinite 1 true
