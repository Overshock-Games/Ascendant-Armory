# place trap
summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.22f,.38f,.08f],scale:1.6f,to_color:[.1f,.2f,.05f]},Radius:1.2f,Duration:200,Age:0,WaitTime:20,ReapplicationDelay:20,RadiusPerTick:.001f,RadiusOnUse:.001f,Tags:["fkbm.zombified_piglin.poison"],potion_contents:{custom_effects:[{id:"minecraft:poison",amplifier:1,duration:100,show_particles:0b,show_icon:1b}]}}

# cd
scoreboard players operation @s fkbm.cd1 = #1 fktool
