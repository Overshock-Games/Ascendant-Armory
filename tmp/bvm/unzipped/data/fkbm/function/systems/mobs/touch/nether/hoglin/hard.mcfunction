## skills
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.hoglin.hotblood
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.hoglin.regen
execute if predicate fkbmtool:rng/75 if entity @s[tag=!fkbm.baby] run tag @s add fkbm.hoglin.stomp

## attributes
attribute @s minecraft:attack_damage modifier add fkbm 1 add_value

# adult
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 20 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:armor modifier add fkbm 8 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.12 add_value
execute if entity @s[tag=!fkbm.baby] run return run data merge entity @s {Health:60f}

# baby
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm -10 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.06 add_value
execute if entity @s[tag=fkbm.baby] run return run data merge entity @s {Health:30f}
