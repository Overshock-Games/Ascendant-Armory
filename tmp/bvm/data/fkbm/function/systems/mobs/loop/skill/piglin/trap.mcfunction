# place trap
execute align y facing entity @p[gamemode=!creative,gamemode=!spectator] feet rotated ~ 0 positioned ^ ^.01 ^.5 run summon minecraft:area_effect_cloud ~ ~ ~ {custom_particle:{type:"mycelium"},Radius:.7f,Duration:1200,DurationOnUse:0f,Age:0,CustomName:{"text":"Piglin Trap"},Tags:["fkbm.piglin.trap","fkbm.piglin.trap.init"]}
execute as @n[type=minecraft:area_effect_cloud,tag=fkbm.piglin.trap.init,distance=..3] at @s run function fkbm:systems/mobs/loop/skill/piglin/trap_init

# fx
execute align y facing entity @p[gamemode=!creative,gamemode=!spectator] feet rotated ~ 0 positioned ^ ^.01 ^.5 run particle minecraft:mycelium ~ ~ ~ .1 .1 .1 0 10
effect give @s minecraft:slowness 1 4 true

# cd
scoreboard players operation @s fkbm.cd1 = #30 fktool

# loop
schedule function fkbm:systems/mobs/loop/skill/piglin/trap_loop 1t
