# break torch
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.husk.torch] if entity @p[distance=..24,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/generic/break_torches

# break door
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.husk.door] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] if predicate fkbmtool:rng/25 if block ^ ^.2 ^.4 #fkbm:zombie_breakdoor run fill ^ ^.2 ^.4 ^ ^.2 ^.4 minecraft:air destroy

# break fence
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.husk.fence] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] if predicate fkbmtool:rng/25 if block ^ ^.2 ^.9 #fkbm:zombie_breakfence run fill ^ ^.2 ^.9 ^ ^.2 ^.9 minecraft:air destroy

# hit slow
# see advancement

# regen
execute if entity @s[tag=fkbm.husk.regen] if score @s fkbm.cd1 matches ..0 run function fkbm:systems/mobs/loop/skill/husk/passive_regen_check
execute if entity @s[tag=fkbm.husk.regen] run scoreboard players operation @s[scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
