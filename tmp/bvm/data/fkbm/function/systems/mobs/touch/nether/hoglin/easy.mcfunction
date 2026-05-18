## skills
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.hoglin.hotblood
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.hoglin.regen
execute if predicate fkbmtool:rng/25 if entity @s[tag=!fkbm.baby] run tag @s add fkbm.hoglin.stomp

## attributes
attribute @s minecraft:attack_damage modifier add fkbm 1 add_value

# adult
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm 0 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:armor modifier add fkbm 4 add_value
execute if entity @s[tag=!fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.05 add_value
execute if entity @s[tag=!fkbm.baby] run return run data merge entity @s {Health:40f}

# baby
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:max_health modifier add fkbm -20 add_value
execute if entity @s[tag=fkbm.baby] run attribute @s minecraft:movement_speed modifier add fkbm 0.04 add_value
execute if entity @s[tag=fkbm.baby] run return run data merge entity @s {Health:20f}
