# rotate
execute if entity @s[tag=fkbm.totem.clean] run tp @s ~ ~ ~ ~1 0
execute if entity @s[tag=fkbm.totem.exposed] run tp @s ~ ~ ~ ~2 0
execute if entity @s[tag=fkbm.totem.weathered] run tp @s ~ ~ ~ ~3 0
execute if entity @s[tag=fkbm.totem.oxidized] run tp @s ~ ~ ~ ~4 0

# range
scoreboard players operation #Totem.Range fkbm.options = #65 fktool
scoreboard players operation #Totem.Range fkbm.options /= #4 fktool
execute if entity @s[tag=fkbm.totem.clean] run scoreboard players operation #Totem.Range fkbm.options *= #4 fktool
execute if entity @s[tag=fkbm.totem.exposed] run scoreboard players operation #Totem.Range fkbm.options *= #3 fktool
execute if entity @s[tag=fkbm.totem.weathered] run scoreboard players operation #Totem.Range fkbm.options *= #2 fktool
execute if entity @s[tag=fkbm.totem.oxidized] run scoreboard players operation #Totem.Range fkbm.options *= #1 fktool

# do
execute store result storage fkbm:data totem.range int 1 run scoreboard players get #Totem.Range fkbm.options
function fkbm:systems/totem/fx/particles with storage fkbm:data totem
