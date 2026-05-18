## skills
execute if predicate fkbmtool:rng/25 run tag @s[tag=!fkbm.baby] add fkbm.wolf.angry
data merge entity @s {CanPickUpLoot:1b}

## attributes
attribute @s minecraft:follow_range modifier add fkbm 32 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.2 add_value
attribute @s minecraft:attack_damage modifier add fkbm 2 add_value

# adult
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 8 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.12 add_value
execute if entity @s[tag=!fkbm.baby] run return run data merge entity @s {Health:16f}

# baby
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 0 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.02 add_value
execute if entity @s[tag=fkbm.baby] run return run data merge entity @s {Health:8f}
