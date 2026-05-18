## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.slime.fusion
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.slime.megajump

## attributes
# get size
execute store result score @s fkbm.var run data get entity @s Size 1

# attr (set base, because fusion did not update it)
execute if score @s fkbm.var matches ..0 run attribute @s minecraft:max_health base set 1
execute if score @s fkbm.var matches ..0 run attribute @s minecraft:max_health modifier add fkbm 3 add_value
execute if score @s fkbm.var matches ..0 run attribute @s minecraft:knockback_resistance modifier add fkbm 0.05 add_value
execute if score @s fkbm.var matches ..0 run return run data merge entity @s {Health:4f}

execute if score @s fkbm.var matches 001 run attribute @s minecraft:max_health base set 4
execute if score @s fkbm.var matches 001 run attribute @s minecraft:max_health modifier add fkbm 4 add_value
execute if score @s fkbm.var matches 001 run attribute @s minecraft:knockback_resistance modifier add fkbm 0.10 add_value
execute if score @s fkbm.var matches 001 run return run data merge entity @s {Health:8f}

execute if score @s fkbm.var matches 002 run attribute @s minecraft:max_health base set 9
execute if score @s fkbm.var matches 002 run attribute @s minecraft:max_health modifier add fkbm 3 add_value
execute if score @s fkbm.var matches 002 run attribute @s minecraft:knockback_resistance modifier add fkbm 0.20 add_value
execute if score @s fkbm.var matches 002 run return run data merge entity @s {Health:12f}

execute if score @s fkbm.var matches 3.. run attribute @s minecraft:max_health base set 16
execute if score @s fkbm.var matches 3.. run attribute @s minecraft:max_health modifier add fkbm 0 add_value
execute if score @s fkbm.var matches 3.. run attribute @s minecraft:knockback_resistance modifier add fkbm 0.30 add_value
execute if score @s fkbm.var matches 3.. run return run data merge entity @s {Health:16f}
