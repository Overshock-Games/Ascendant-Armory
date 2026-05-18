execute as @a[tag=fkbm.illusioner_chance] at @s as @n[type=#fkbm:illusioner_can_replace,predicate=fkbm:generic/hurttime,distance=..8] at @s unless entity @n[type=minecraft:illusioner,distance=..32] run function fkbm:adv/mobs/illusioner_chance
tag @a[tag=fkbm.illusioner_chance] remove fkbm.illusioner_chance
