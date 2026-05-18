# break torch
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.zombie.torch] if entity @p[distance=..24,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/generic/break_torches

# break door
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.zombie.door] if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] if predicate fkbmtool:rng/25 if block ^ ^.2 ^.4 #fkbm:zombie_breakdoor run fill ^ ^.2 ^.4 ^ ^.2 ^.4 minecraft:air destroy

# break fence
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.zombie.fence] if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] if predicate fkbmtool:rng/25 if block ^ ^.2 ^.9 #fkbm:zombie_breakfence run fill ^ ^.2 ^.9 ^ ^.2 ^.9 minecraft:air destroy

# build
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.zombie.build,nbt={OnGround:1b}] if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] positioned ~-1 ~3 ~-1 if entity @p[dy=8,dx=2,dz=2] at @s run function fkbm:systems/mobs/loop/skill/zombie/build

# dig
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.zombie.dig] run function fkbm:systems/mobs/loop/skill/zombie/dig_check

tag @s add fkbm.looped
