## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.polar_bear.angry

## attributes
attribute @s minecraft:follow_range modifier add fkbm 48 add_value
attribute @s minecraft:armor modifier add fkbm 8 add_value

# adult
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 50 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.07 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:knockback_resistance modifier add fkbm 1.0 add_value
execute if entity @s[tag=!fkbm.baby] run data merge entity @s {Health:80f}

# baby
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 10 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:knockback_resistance modifier add fkbm 0.5 add_value
execute if entity @s[tag=fkbm.baby] run data merge entity @s {Health:40f}
