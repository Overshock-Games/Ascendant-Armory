## skills
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.hoglin.hotblood
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.hoglin.regen
execute if predicate fkbmtool:rng/50 if entity @s[tag=!fkbm.baby] run tag @s add fkbm.hoglin.stomp

## attributes
attribute @s minecraft:attack_damage modifier add fkbm 2 add_value

# adult
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 10 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:armor modifier add fkbm 6 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.08 add_value
execute if entity @s[tag=!fkbm.baby] run return run data merge entity @s {Health:50f}

# baby
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm -15 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.05 add_value
execute if entity @s[tag=fkbm.baby] run return run data merge entity @s {Health:25f}
