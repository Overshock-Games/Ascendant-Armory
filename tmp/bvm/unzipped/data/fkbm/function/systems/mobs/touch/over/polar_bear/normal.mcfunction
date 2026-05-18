## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.polar_bear.angry

## attributes
attribute @s minecraft:follow_range modifier add fkbm 32 add_value
attribute @s minecraft:armor modifier add fkbm 6 add_value

# adult
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 30 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.05 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:knockback_resistance modifier add fkbm 0.6 add_value
execute if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:60f}

# baby
#execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 0 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.01 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:knockback_resistance modifier add fkbm 0.3 add_value
execute if entity @s[tag=fkbm.baby] run data merge entity @s {Health:30f}
