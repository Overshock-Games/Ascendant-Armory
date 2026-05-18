# lookbreak
execute if score MobGriefing fkbm.options matches 2.. if entity @s[tag=fkbm.wither_skeleton.lookbreak] if entity @p[distance=..6,gamemode=!creative,gamemode=!spectator] anchored eyes facing entity @p[distance=..6,gamemode=!creative,gamemode=!spectator] eyes rotated ~ 0 positioned ^ ^ ^.8 if block ~ ~ ~ #fkbm:wither_skeleton_lookbreak unless block ~ ~ ~ minecraft:air if block ~ ~-1 ~ #fkbm:wither_skeleton_lookbreak if block ~ ~-2 ~ #fkbm:wither_skeleton_lookbreak run function fkbm:systems/mobs/loop/skill/wither_skeleton/lookbreak

# shield
execute if entity @s[tag=fkbm.wither_skeleton.shield,scores={fkbm.cd1=..0}] run function fkbm:systems/mobs/loop/skill/wither_skeleton/arrowblock_loop
scoreboard players operation @s[tag=fkbm.wither_skeleton.shield,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# darkness
execute if entity @s[tag=fkbm.wither_skeleton.darkness,tag=!fkbm.wither_skeleton.darkness.spread,scores={fkbm.cd2=..0}] if entity @p[distance=..4,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_init
scoreboard players operation @s[tag=fkbm.wither_skeleton.darkness,scores={fkbm.cd2=1..}] fkbm.cd2 -= MobGameplayLatency fkbm.options

# flying blades
execute if entity @s[tag=fkbm.wither_skeleton.flying_blades,scores={fkbm.cd3=..0}] if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] unless entity @e[type=minecraft:vex,tag=fkbm.wither_skeleton.flying_blades,distance=..16] run function fkbm:systems/mobs/loop/skill/wither_skeleton/flying_blades
scoreboard players operation @s[tag=fkbm.wither_skeleton.flying_blades,scores={fkbm.cd3=1..}] fkbm.cd3 -= MobGameplayLatency fkbm.options

# alpha
execute if entity @s[tag=fkbm.alpha] if entity @p[distance=..16] run particle minecraft:soul ~ ~1.2 ~ .2 .5 .2 0 3

tag @s add fkbm.looped
