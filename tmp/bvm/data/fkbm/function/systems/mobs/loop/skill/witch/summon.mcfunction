# summons
execute if predicate fkbmtool:rng/90 run summon minecraft:slime ~ ~ ~ {Size:1,Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute if predicate fkbmtool:rng/80 run summon minecraft:slime ~ ~ ~ {Size:1,Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute if predicate fkbmtool:rng/40 run summon minecraft:pufferfish ~ ~ ~ {Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute if predicate fkbmtool:rng/30 run summon minecraft:husk ~ ~ ~ {IsBaby:1b,Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute if predicate fkbmtool:rng/20 run summon minecraft:cave_spider ~ ~ ~ {Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute if predicate fkbmtool:rng/05 run summon minecraft:vex ~ ~ ~ {Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute if predicate fkbmtool:rng/03 run summon minecraft:zombified_piglin ~ ~ ~ {IsBaby:1b,Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute if predicate fkbmtool:rng/01 run summon minecraft:blaze ~ ~ ~ {Tags:["fkbm.ignore","fkbm.witch.minion","fkbm.witch.minion.init","smithed.entity","smithed.strict","global.ignore"]}
execute as @e[tag=fkbm.witch.minion.init,distance=..5] run function fkbm:systems/mobs/loop/skill/witch/summon_init

# spread
spreadplayers ~ ~ 1 3 false @e[tag=fkbm.witch.minion.init,distance=..4]
execute at @e[tag=fkbm.witch.minion.init,distance=..5] run particle minecraft:witch ~ ~.2 ~ .3 .3 .3 0 5
tag @e[tag=fkbm.witch.minion.init,distance=..4] remove fkbm.witch.minion.init

# fx
particle minecraft:dust_color_transition{from_color:[1f,0f,1f],scale:2f,to_color:[0f,0f,0f]} ~ ~1 ~ .4 .5 .4 0 20
playsound minecraft:entity.witch.celebrate hostile @a[distance=..16] ~ ~1.6 ~ 1 .5

# cd
scoreboard players operation @s fkbm.cd2 = #40 fktool
