# prepare explosion
execute if entity @p[distance=..2,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/zombified_piglin/explode_init

# passive fx
execute if entity @p[distance=2.01..8,gamemode=!creative,gamemode=!spectator] run playsound minecraft:entity.creeper.primed hostile @a[distance=..16] ~ ~1.6 ~ .3 2
execute if entity @p[distance=2.01..8,gamemode=!creative,gamemode=!spectator] run playsound minecraft:entity.endermite.ambient hostile @a[distance=..16] ~ ~1.6 ~ .3 2
