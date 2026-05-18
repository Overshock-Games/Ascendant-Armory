# red eyes distance=..12
data merge entity @s {anger_end_time:200}

# canceler
execute unless entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] run return fail

# angry distance=..3
execute if score #IndividualDiff fkbm.options matches 1 if predicate fkbmtool:rng/50 run data modify entity @s angry_at set from entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] UUID
execute if score #IndividualDiff fkbm.options matches 2 if predicate fkbmtool:rng/75 run data modify entity @s angry_at set from entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] UUID
execute if score #IndividualDiff fkbm.options matches 3 if predicate fkbmtool:rng/95 run data modify entity @s angry_at set from entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] UUID
