# secure despawn
data modify entity @s Age set value -17000

# checks
execute unless block ~ ~-.7 ~ #fkbm:totem/base run return run tellraw @a[tag=fkdev] {"storage":"fkbm:text","nbt":"totem.unknown_mat","interpret":true}
execute unless block ~ ~-.7 ~ #fkbm:totem/base[lit=true] run return run tellraw @a[tag=fkdev] {"storage":"fkbm:text","nbt":"totem.unlit","interpret":true}

# lock pickup
data modify entity @s PickupDelay set value 120s

# fx
execute if entity @p[distance=..08] run playsound minecraft:block.beacon.ambient ambient @a[distance=..8] ~ ~.2 ~ 5 .7 1
execute if entity @p[distance=..32] run particle minecraft:campfire_cosy_smoke ~ ~.1 ~ .2 .1 .2 0 3
execute if entity @p[distance=..32] run schedule function fkbm:systems/totem/fx/loop 10t append

# clamp
execute if score Totem.Range fkbm.options matches ..-01 run scoreboard players set Totem.Range fkbm.options 0
execute if score Totem.Range fkbm.options matches 257.. run scoreboard players set Totem.Range fkbm.options 256

# oxidized
function fkbm:systems/totem/clean_tags
execute if block ~ ~-.5 ~ minecraft:copper_bulb run tag @s add fkbm.totem.clean
execute if block ~ ~-.5 ~ minecraft:waxed_copper_bulb run tag @s add fkbm.totem.clean
execute if block ~ ~-.5 ~ minecraft:exposed_copper_bulb run tag @s add fkbm.totem.exposed
execute if block ~ ~-.5 ~ minecraft:waxed_exposed_copper_bulb run tag @s add fkbm.totem.exposed
execute if block ~ ~-.5 ~ minecraft:weathered_copper_bulb run tag @s add fkbm.totem.weathered
execute if block ~ ~-.5 ~ minecraft:waxed_weathered_copper_bulb run tag @s add fkbm.totem.weathered
execute if block ~ ~-.5 ~ minecraft:oxidized_copper_bulb run tag @s add fkbm.totem.oxidized
execute if block ~ ~-.5 ~ minecraft:waxed_oxidized_copper_bulb run tag @s add fkbm.totem.oxidized

# range
scoreboard players operation #Totem.Range fkbm.options = #65 fktool
scoreboard players operation #Totem.Range fkbm.options /= #4 fktool
execute if entity @s[tag=fkbm.totem.clean] run scoreboard players operation #Totem.Range fkbm.options *= #4 fktool
execute if entity @s[tag=fkbm.totem.exposed] run scoreboard players operation #Totem.Range fkbm.options *= #3 fktool
execute if entity @s[tag=fkbm.totem.weathered] run scoreboard players operation #Totem.Range fkbm.options *= #2 fktool
execute if entity @s[tag=fkbm.totem.oxidized] run scoreboard players operation #Totem.Range fkbm.options *= #1 fktool

# do
execute store result storage fkbm:data totem.range int 1 run scoreboard players get #Totem.Range fkbm.options
function fkbm:systems/totem/lock_mobs with storage fkbm:data totem
