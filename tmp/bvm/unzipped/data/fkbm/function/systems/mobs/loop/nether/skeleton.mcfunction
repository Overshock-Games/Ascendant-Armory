# break torch
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.skeleton.torch] if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/generic/break_torches

# get sword
execute if entity @s[tag=fkbm.skeleton.sword,tag=!fkbm.skeleton.sworded] if entity @p[distance=..6,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/skeleton/sword
execute if entity @s[tag=fkbm.skeleton.sword,tag=fkbm.skeleton.sworded] unless entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/skeleton/sword_cancel

# arrow block
execute if entity @s[tag=fkbm.skeleton.shield,scores={fkbm.cd1=..0}] run function fkbm:systems/mobs/loop/skill/skeleton/arrowblock_loop
scoreboard players operation @s[tag=fkbm.skeleton.shield,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# fire bomb
execute if entity @s[tag=fkbm.skeleton.firebomb,tag=!fkbm.skeleton.flamed] if entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/skeleton/firebomb
execute if entity @s[tag=fkbm.skeleton.firebomb,tag=fkbm.skeleton.flamed] at @s unless entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run tag @s remove fkbm.skeleton.flamed

# alpha
execute if entity @s[tag=fkbm.alpha] if entity @p[distance=..16] run particle minecraft:white_ash ~ ~.8 ~ .2 .4 .2 0 5
execute if entity @s[tag=fkbm.alpha] if entity @p[distance=..5,gamemode=!creative,gamemode=!spectator] run fill ~ ~ ~ ~ ~ ~ minecraft:fire replace minecraft:air

tag @s add fkbm.looped
