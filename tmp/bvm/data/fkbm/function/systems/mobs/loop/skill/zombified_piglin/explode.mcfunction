# if toxic, add poison aec
execute if entity @s[tag=fkbm.zombified_piglin.infected] run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.22f,.38f,.08f],scale:1.2f,to_color:[.1f,.2f,.05f]},Radius:5.0f,Duration:600,Age:0,WaitTime:1,ReapplicationDelay:50,RadiusPerTick:-.003f,RadiusOnUse:0f,Tags:["fkbm.zombified_piglin.explosive"],potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b,show_icon:1b}]}}

# tp explosive creeper
execute positioned ~ -10 ~ run tp @n[type=minecraft:creeper,tag=fkbm.zombified_piglin.explode,distance=..2] @s

# fx
particle minecraft:large_smoke ~ ~1 ~ 1.2 1.2 1.2 0 50
particle minecraft:campfire_cosy_smoke ~ ~1 ~ .6 .6 .6 0 30

# kill
kill @s
