## skills
execute if predicate fkbmtool:rng/50 run tag @s[tag=!fkbm.baby] add fkbm.wolf.angry
data merge entity @s {CanPickUpLoot:1b}

## attributes
attribute @s minecraft:follow_range modifier add fkbm 48 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.3 add_value
attribute @s minecraft:attack_damage modifier add fkbm 3 add_value

# adult
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 12 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.14 add_value
execute if entity @s[tag=!fkbm.baby] run return run data merge entity @s {Health:20f}

# baby
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 2 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.03 add_value
execute if entity @s[tag=fkbm.baby] run return run data merge entity @s {Health:10f}
