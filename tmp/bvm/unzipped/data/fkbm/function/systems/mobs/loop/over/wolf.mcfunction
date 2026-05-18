# angry
execute as @s[tag=fkbm.wolf.angry] unless data entity @s Owner if entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/wolf/angry

tag @s add fkbm.looped
