## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.illusioner.enchantedbow
execute if predicate fkbmtool:rng/60 run tag @s add fkbm.illusioner.heal
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.illusioner.cdbuff

## attributes
attribute @s minecraft:max_health modifier add fkbm 18 add_value
attribute @s minecraft:armor modifier add fkbm 6 add_value
data merge entity @s {Health:50f,SpellTicks:20}
