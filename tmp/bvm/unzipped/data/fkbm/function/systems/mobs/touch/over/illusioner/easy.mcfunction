## skills
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.illusioner.enchantedbow
execute if predicate fkbmtool:rng/20 run tag @s add fkbm.illusioner.heal
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.illusioner.cdbuff

## attributes
#attribute @s minecraft:max_health modifier add fkbm 0 add_value
attribute @s minecraft:armor modifier add fkbm 2 add_value
data merge entity @s {Health:32f,SpellTicks:20}
