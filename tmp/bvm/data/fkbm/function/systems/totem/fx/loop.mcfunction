# fx
scoreboard players reset #continue fkbm.options
execute as @e[type=minecraft:item,tag=fkbm.totem] at @s if entity @p[distance=..32] run function fkbm:systems/totem/fx/do

execute if score #continue fkbm.options matches 1 run schedule function fkbm:systems/totem/fx/loop 5t
