# arrow block
execute if entity @s[tag=fkbm.piglin_brute.shield,scores={fkbm.cd1=..0}] run schedule function fkbm:systems/mobs/loop/skill/piglin_brute/arrowblock_loop 2t append
scoreboard players operation @s[tag=fkbm.piglin_brute.shield,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# berserk
scoreboard players operation @s[tag=fkbm.piglin_brute.berserk,scores={fkbm.cd2=1..}] fkbm.cd2 -= MobGameplayLatency fkbm.options

# alpha
execute if entity @s[tag=fkbm.alpha] if entity @p[distance=..32] run particle minecraft:dust_color_transition{from_color:[.4f,.05f,0f],scale:2f,to_color:[1f,.2f,0f]} ~ ~.9 ~ .3 .7 .3 0 2

tag @s add fkbm.looped
