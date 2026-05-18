## skills
execute if predicate fkbmtool:rng/50 run tag @s add fkbm.illusioner.enchantedbow
execute if predicate fkbmtool:rng/40 run tag @s add fkbm.illusioner.heal
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.illusioner.cdbuff

## attributes
attribute @s minecraft:max_health modifier add fkbm 8 add_value
attribute @s minecraft:armor modifier add fkbm 4 add_value
data merge entity @s {Health:40f,SpellTicks:20}
