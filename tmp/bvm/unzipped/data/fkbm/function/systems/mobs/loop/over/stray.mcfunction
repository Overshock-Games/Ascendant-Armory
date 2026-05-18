# break torch
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.stray.torch] if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/generic/break_torches

# frost walker
execute if score MobGriefing fkbm.options matches 1.. if entity @s[tag=fkbm.stray.frostwalker] run function fkbm:systems/mobs/loop/skill/stray/frost_walker

# frozen thorns
# see advancement
scoreboard players operation @s[tag=fkbm.stray.frozenthorns,scores={fkbm.cd2=1..}] fkbm.cd2 -= MobGameplayLatency fkbm.options

# ice prison
execute if score MobGriefing fkbm.options matches 1.. if entity @s[tag=fkbm.stray.iceprison,scores={fkbm.cd1=..0}] if entity @p[distance=1..4,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/stray/ice_prison
scoreboard players operation @s[tag=fkbm.stray.iceprison,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
