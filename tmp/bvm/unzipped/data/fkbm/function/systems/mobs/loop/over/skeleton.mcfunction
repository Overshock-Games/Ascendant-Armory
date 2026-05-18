# break torch
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.skeleton.torch] if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/generic/break_torches

# get sword
execute if entity @s[tag=fkbm.skeleton.sword,tag=!fkbm.skeleton.sworded] if entity @p[distance=..6,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/skeleton/sword
execute if entity @s[tag=fkbm.skeleton.sword,tag=fkbm.skeleton.sworded] unless entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/skeleton/sword_cancel

# arrow block
execute if entity @s[tag=fkbm.skeleton.shield,scores={fkbm.cd1=..0}] run function fkbm:systems/mobs/loop/skill/skeleton/arrowblock_loop
scoreboard players operation @s[tag=fkbm.skeleton.shield,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# smoke bomb
execute if entity @s[tag=fkbm.skeleton.smokebomb,tag=!fkbm.skeleton.smoked] if entity @p[distance=..5,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/skeleton/smokebomb
execute if entity @s[tag=fkbm.skeleton.smokebomb,tag=fkbm.skeleton.smoked] at @s unless entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run tag @s remove fkbm.skeleton.smoked

# alpha
execute if entity @s[tag=fkbm.alpha] if entity @p[distance=..16] run particle minecraft:white_ash ~ ~.8 ~ .2 .4 .2 0 5

tag @s add fkbm.looped
