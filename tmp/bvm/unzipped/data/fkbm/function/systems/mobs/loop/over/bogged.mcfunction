# break torch
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.bogged.torch] if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/generic/break_torches

# get sword
execute if entity @s[tag=fkbm.bogged.sword,tag=!fkbm.bogged.sworded] if entity @p[distance=..6,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/bogged/sword
execute if entity @s[tag=fkbm.bogged.sword,tag=fkbm.bogged.sworded] unless entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/bogged/sword_cancel

# arrow block
execute if entity @s[tag=fkbm.bogged.shield,scores={fkbm.cd1=..0}] run function fkbm:systems/mobs/loop/skill/bogged/arrowblock_loop
scoreboard players operation @s[tag=fkbm.bogged.shield,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# clear poison form silverfish
execute if entity @s[tag=fkbm.bogged.infested,tag=fkbm.bogged.poison_leak] run effect clear @e[type=minecraft:silverfish,distance=..8] minecraft:poison

# summon
execute if entity @s[tag=fkbm.bogged.summoner,scores={fkbm.cd2=..0}] if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] unless entity @n[tag=fkbm.bogged.minion,distance=..12] run function fkbm:systems/mobs/loop/skill/bogged/summon
scoreboard players operation @s[tag=fkbm.bogged.summoner,scores={fkbm.cd2=1..}] fkbm.cd2 -= MobGameplayLatency fkbm.options

# alpha
execute if entity @s[tag=fkbm.alpha] if entity @p[distance=..16] run particle minecraft:white_ash ~ ~.8 ~ .2 .4 .2 0 5

tag @s add fkbm.looped
