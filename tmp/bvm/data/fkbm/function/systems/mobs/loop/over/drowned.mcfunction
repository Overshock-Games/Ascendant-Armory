# in water
execute store success score #tmp.in_water fkbm.options run execute if predicate fkbm:generic/in_water/feet

# slow on lands
execute if score #IndividualDiff fkbm.options matches 1 if score #tmp.in_water fkbm.options matches 0 run effect give @s minecraft:slowness 5 2 true
execute if score #IndividualDiff fkbm.options matches 2 if score #tmp.in_water fkbm.options matches 0 run effect give @s minecraft:slowness 5 1 true
execute if score #IndividualDiff fkbm.options matches 3 if score #tmp.in_water fkbm.options matches 0 run effect give @s minecraft:slowness 5 1 true

tag @s add fkbm.looped
