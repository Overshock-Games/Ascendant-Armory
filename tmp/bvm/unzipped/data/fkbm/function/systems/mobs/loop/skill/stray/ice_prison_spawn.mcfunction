# prison
fill ~ ~ ~ ~ ~1 ~ minecraft:structure_void replace #fkbm:stray_ice_prison
fill ~ ~-1 ~ ~ ~2 ~ minecraft:packed_ice replace #fkbm:stray_ice_prison
fill ~1 ~ ~ ~-1 ~ ~ minecraft:packed_ice replace #fkbm:stray_ice_prison
fill ~ ~ ~1 ~ ~ ~-1 minecraft:packed_ice replace #fkbm:stray_ice_prison
fill ~ ~ ~ ~ ~1 ~ minecraft:air replace minecraft:structure_void
fill ~ ~ ~ ~ ~ ~ minecraft:powder_snow replace

# optional head ice
execute if predicate fkbmtool:rng/30 run fill ~1 ~1 ~ ~1 ~1 ~ minecraft:packed_ice replace #fkbm:stray_ice_prison
execute if predicate fkbmtool:rng/30 run fill ~-1 ~1 ~ ~-1 ~1 ~ minecraft:packed_ice replace #fkbm:stray_ice_prison
execute if predicate fkbmtool:rng/30 run fill ~ ~1 ~1 ~ ~1 ~1 minecraft:packed_ice replace #fkbm:stray_ice_prison
execute if predicate fkbmtool:rng/30 run fill ~ ~1 ~-1 ~ ~1 ~-1 minecraft:packed_ice replace #fkbm:stray_ice_prison

# optional feet blue_ice
execute if predicate fkbmtool:rng/30 run fill ~01 ~ ~ ~01 ~ ~ minecraft:blue_ice replace minecraft:packed_ice
execute if predicate fkbmtool:rng/30 run fill ~-1 ~ ~ ~-1 ~ ~ minecraft:blue_ice replace minecraft:packed_ice
execute if predicate fkbmtool:rng/30 run fill ~ ~ ~01 ~ ~ ~01 minecraft:blue_ice replace minecraft:packed_ice
execute if predicate fkbmtool:rng/30 run fill ~ ~ ~-1 ~ ~ ~-1 minecraft:blue_ice replace minecraft:packed_ice

# fx
particle minecraft:snowflake ~ ~1 ~ .3 1 .3 .1 10
particle minecraft:dust_color_transition{from_color:[.5f,.5f,1f],scale:2f,to_color:[1f,1f,1f]} ~ ~1 ~ .5 .5 .5 0 20
playsound minecraft:block.glass.break hostile @a[distance=..16] ^ ^ ^2 2 .5 .5

# loop
summon minecraft:marker ~ ~ ~ {Tags:["fkbm.stray.ice_prison","global.ignore","smithed.entity","smithed.strict"]}
function fkbm:systems/mobs/loop/skill/stray/ice_prison_loop
