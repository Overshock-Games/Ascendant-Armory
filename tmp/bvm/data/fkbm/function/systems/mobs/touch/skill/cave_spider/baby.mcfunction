# is baby summoned by mother
attribute @s minecraft:max_health modifier add fkbm.baby_health -0.5 add_multiplied_base
attribute @s minecraft:attack_damage modifier add fkbm.baby_damage -0.5 add_multiplied_base

# size
execute if predicate fkbmtool:rng/10 run return run attribute @s minecraft:scale modifier add fkbm.baby_scale -0.5 add_multiplied_base
execute if predicate fkbmtool:rng/25 run return run attribute @s minecraft:scale modifier add fkbm.baby_scale -0.4 add_multiplied_base
execute if predicate fkbmtool:rng/50 run return run attribute @s minecraft:scale modifier add fkbm.baby_scale -0.3 add_multiplied_base
attribute @s minecraft:scale modifier add fkbm.baby_scale -0.2 add_multiplied_base
