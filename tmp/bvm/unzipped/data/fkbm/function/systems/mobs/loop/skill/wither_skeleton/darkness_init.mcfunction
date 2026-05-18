# tag
tag @s add fkbm.wither_skeleton.darkness.spread

# skill
summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"dust_color_transition",from_color:[.3f,.3f,.3f],scale:2f,to_color:[.1f,.1f,.1f]},Radius:0.5f,Duration:60,Age:0,WaitTime:20,ReapplicationDelay:20,RadiusPerTick:0.22f,RadiusOnUse:0f,Tags:["fkbm.wither_skeleton.darkness"],potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:1b,duration:30},{id:"minecraft:wither",amplifier:3b,duration:40},{id:"minecraft:darkness",amplifier:0b,duration:30}]}}
effect give @s minecraft:slowness 5 4 true
effect give @s minecraft:weakness 5 4 true

# fx
playsound minecraft:entity.wither_skeleton.ambient hostile @a[distance=..32] ~ ~ ~ 5 2
playsound minecraft:entity.enderman.scream hostile @a[distance=..32] ~ ~ ~ 2 .5
particle minecraft:dust_color_transition{from_color:[.3f,.3f,.3f],scale:2f,to_color:[.1f,.1f,.1f]} ~ ~1 ~ .3 .5 .3 .1 20

# loop
function fkbm:systems/mobs/loop/skill/wither_skeleton/darkness_loop
