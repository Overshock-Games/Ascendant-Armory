# dodge
execute if entity @s[tag=fkbm.vex.dodge] run function fkbm:systems/mobs/loop/skill/vex/dodge_loop
scoreboard players operation @s[tag=fkbm.vex.dodge,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
