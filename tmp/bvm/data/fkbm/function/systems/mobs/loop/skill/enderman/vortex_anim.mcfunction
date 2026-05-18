execute at @a[tag=fkbm.enderman.vortexed.effect] run particle minecraft:portal ~ ~.5 ~ .3 .5 .3 .2 100
execute at @a[tag=fkbm.enderman.vortexed.effect] run effect give @p minecraft:nausea 8 0 true
execute at @a[tag=fkbm.enderman.vortexed.effect] run effect give @p minecraft:weakness 3 0 false
execute at @a[tag=fkbm.enderman.vortexed.effect] run playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~

tag @a[tag=fkbm.enderman.vortexed.effect] remove fkbm.enderman.vortexed.effect
