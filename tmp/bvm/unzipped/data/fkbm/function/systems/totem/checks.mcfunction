# search and tag totem
execute as @a at @s as @e[type=minecraft:item,tag=!fkbm.totem,distance=..8,nbt={Item:{id:"minecraft:player_head"}}] run function fkbm:systems/totem/data/safe_checks

# as totem
execute as @e[type=minecraft:item,tag=fkbm.totem] at @s run function fkbm:systems/totem/init
