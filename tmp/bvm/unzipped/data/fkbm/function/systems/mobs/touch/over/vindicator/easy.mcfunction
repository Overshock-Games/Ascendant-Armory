## skills
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.vindicator.rage
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.vindicator.swordman
execute if predicate fkbmtool:rng/10 run tag @s[tag=!fkbm.vindicator.swordman] add fkbm.vindicator.worker

## attributes
#attribute @s minecraft:max_health modifier add fkbm 0 add_value
attribute @s minecraft:armor modifier add fkbm 4 add_value
attribute @s minecraft:knockback_resistance modifier add fkbm 0.1 add_value
#data merge entity @s {Health:24f}
