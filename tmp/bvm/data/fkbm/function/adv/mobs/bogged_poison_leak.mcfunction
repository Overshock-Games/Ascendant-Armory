advancement revoke @s only fkbm:mobs/bogged_poison_leak
function fkbm:systems/difficulty/set_individual

# chances
execute if score #IndividualDiff fkbm.options matches 1 unless predicate fkbmtool:rng/30 at @n[type=minecraft:bogged,tag=fkbm.bogged.poison_leak,distance=..16,predicate=fkbm:generic/hurttime] run return run function fkbm:systems/mobs/loop/skill/bogged/poison_leak_fail
execute if score #IndividualDiff fkbm.options matches 2 unless predicate fkbmtool:rng/50 at @n[type=minecraft:bogged,tag=fkbm.bogged.poison_leak,distance=..16,predicate=fkbm:generic/hurttime] run return run function fkbm:systems/mobs/loop/skill/bogged/poison_leak_fail
execute if score #IndividualDiff fkbm.options matches 3 unless predicate fkbmtool:rng/70 at @n[type=minecraft:bogged,tag=fkbm.bogged.poison_leak,distance=..16,predicate=fkbm:generic/hurttime] run return run function fkbm:systems/mobs/loop/skill/bogged/poison_leak_fail

# do
execute as @n[type=minecraft:bogged,tag=fkbm.bogged.poison_leak,distance=..16,predicate=fkbm:generic/hurttime] at @s run function fkbm:systems/mobs/loop/skill/bogged/poison_leak
