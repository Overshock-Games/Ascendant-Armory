## skills
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.vex.dodge
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.axe
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.shield
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.vex.dualsword

## attributes
attribute @s minecraft:max_health modifier add fkbm 4 add_value
data merge entity @s {Health:18f}
