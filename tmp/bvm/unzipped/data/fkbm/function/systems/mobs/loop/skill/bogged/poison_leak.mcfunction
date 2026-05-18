# effects
effect give @s minecraft:speed 1 2 true

# poison leak
execute if score #IndividualDiff fkbm.options matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.22f,.38f,.08f],scale:1.4f,to_color:[.1f,.2f,.05f]},Radius:1.4f,Duration:200,Age:0,WaitTime:5,ReapplicationDelay:20,RadiusPerTick:-.001f,RadiusOnUse:-.001f,Tags:["fkbm.bogged.poison_leak"],potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b,show_icon:1b}]}}
execute if score #IndividualDiff fkbm.options matches 2 run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.22f,.38f,.08f],scale:1.4f,to_color:[.1f,.2f,.05f]},Radius:1.7f,Duration:200,Age:0,WaitTime:5,ReapplicationDelay:20,RadiusPerTick:-.001f,RadiusOnUse:-.001f,Tags:["fkbm.bogged.poison_leak"],potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b,show_icon:1b}]}}
execute if score #IndividualDiff fkbm.options matches 3 run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.22f,.38f,.08f],scale:1.4f,to_color:[.1f,.2f,.05f]},Radius:2.0f,Duration:200,Age:0,WaitTime:5,ReapplicationDelay:20,RadiusPerTick:-.001f,RadiusOnUse:-.001f,Tags:["fkbm.bogged.poison_leak"],potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b,show_icon:1b}]}}

# fx post
stopsound @a[distance=..8] hostile minecraft:block.lava.extinguish
playsound minecraft:block.lava.extinguish hostile @a[distance=..16] ~ ~ ~ 1 .8
particle minecraft:campfire_cosy_smoke ~ ~.1 ~ .4 .1 .4 0 5
particle minecraft:dust_color_transition{from_color:[.22f,.38f,.08f],scale:1.6f,to_color:[.1f,.2f,.05f]} ~ ~.6 ~ .3 .3 .3 0 5
