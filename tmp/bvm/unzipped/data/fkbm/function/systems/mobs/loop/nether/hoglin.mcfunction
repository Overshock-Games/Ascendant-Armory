# stomp
execute if entity @s[tag=fkbm.hoglin.stomp,scores={fkbm.cd1=..0}] if entity @p[distance=..3,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/hoglin/stomp
scoreboard players operation @s[tag=fkbm.hoglin.stomp,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
