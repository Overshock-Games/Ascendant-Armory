# trap
execute if entity @s[tag=fkbm.piglin.trap,scores={fkbm.cd1=..0}] if entity @p[distance=4..8,gamemode=!creative,gamemode=!spectator] unless entity @e[type=minecraft:area_effect_cloud,tag=fkbm.piglin.trap,distance=..3] run function fkbm:systems/mobs/loop/skill/piglin/trap
scoreboard players operation @s[tag=fkbm.piglin.trap,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
