# root
execute if score #IndividualDiff fkbm.options matches 1 positioned over world_surface positioned ^ ^.2 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.6f,.6f,.6f],scale:1.2f,to_color:[.9f,.9f,.9f]},Radius:0.5f,Duration:25,Age:0,WaitTime:1,ReapplicationDelay:20,RadiusPerTick:0.28f,RadiusOnUse:0f,Tags:["global.ignore","smithed.entity","smithed.strict","fkbm.evoker.root"],potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:1,duration:40,show_particles:0b,show_icon:1b}]}}
execute if score #IndividualDiff fkbm.options matches 2 positioned over world_surface positioned ^ ^.2 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.6f,.6f,.6f],scale:1.2f,to_color:[.9f,.9f,.9f]},Radius:0.5f,Duration:25,Age:0,WaitTime:1,ReapplicationDelay:20,RadiusPerTick:0.28f,RadiusOnUse:0f,Tags:["global.ignore","smithed.entity","smithed.strict","fkbm.evoker.root"],potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:1,duration:40,show_particles:0b,show_icon:1b}]}}
execute if score #IndividualDiff fkbm.options matches 3 positioned over world_surface positioned ^ ^.2 ^ run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.6f,.6f,.6f],scale:1.2f,to_color:[.9f,.9f,.9f]},Radius:0.5f,Duration:25,Age:0,WaitTime:1,ReapplicationDelay:20,RadiusPerTick:0.28f,RadiusOnUse:0f,Tags:["global.ignore","smithed.entity","smithed.strict","fkbm.evoker.root"],potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:1,duration:40,show_particles:0b,show_icon:1b}]}}

# fx
particle minecraft:wax_off ~ ~2.2 ~ .2 .1 .2 0.1 8
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1.5

# cd
scoreboard players operation @s fkbm.var = #8 fktool
