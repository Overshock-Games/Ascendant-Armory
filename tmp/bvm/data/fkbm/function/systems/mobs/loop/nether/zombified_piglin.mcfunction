# infect area
execute if entity @s[tag=fkbm.zombified_piglin.infected,scores={fkbm.cd1=..0}] unless entity @e[type=minecraft:area_effect_cloud,tag=fkbm.zombified_piglin.poison,distance=...6] align y run function fkbm:systems/mobs/loop/skill/zombified_piglin/spread_poison
execute if entity @s[tag=fkbm.zombified_piglin.infected] run particle minecraft:dust_color_transition{from_color:[.22f,.38f,.08f],scale:1.5f,to_color:[.1f,.2f,.05f]} ~ ~.8 ~ .3 .5 .3 .01 5
scoreboard players operation @s[tag=fkbm.zombified_piglin.infected,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# explosive
execute if entity @s[tag=fkbm.zombified_piglin.explosive] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/zombified_piglin/explode_check

# aggressive
execute if entity @s[tag=fkbm.zombified_piglin.aggressive] run function fkbm:systems/mobs/loop/skill/zombified_piglin/aggro_player

tag @s add fkbm.looped
