# root
execute if entity @s[tag=fkbm.evoker.root,scores={fkbm.var=..0}] if entity @p[distance=..10,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/evoker/root
scoreboard players operation @s[tag=fkbm.evoker.root,scores={fkbm.var=1..}] fkbm.var -= MobGameplayLatency fkbm.options

# group regen
execute if entity @s[tag=fkbm.evoker.groupregen] store result score #tmp fkbm.cd1 run data get entity @s Health
execute if entity @s[tag=fkbm.evoker.groupregen] if score #tmp fkbm.cd1 matches ..21 if entity @s[scores={fkbm.cd1=..0}] run function fkbm:systems/mobs/loop/skill/evoker/group_regen
scoreboard players operation @s[tag=fkbm.evoker.groupregen,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
