# bait
execute as @s[tag=!fkbm.creeper.baited] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/creeper/bait
execute unless entity @p[distance=..12,gamemode=!creative,gamemode=!spectator] run tag @s remove fkbm.creeper.baited

# unstable
execute as @s[tag=fkbm.creeper.unstable] run particle minecraft:wax_off ~ ~.6 ~ .2 .4 .2 0 5

tag @s add fkbm.looped
