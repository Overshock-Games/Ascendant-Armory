# summons
execute if predicate fkbmtool:rng/99 run summon minecraft:skeleton ~ ~ ~ {Tags:["fkbm.ignore","fkbm.bogged.minion","fkbm.bogged.minion.init","smithed.entity","smithed.strict","global.ignore"],CustomName:"Skeleton Minion",attributes:[{id:"minecraft:scale",base:0.5}],DeathLootTable:"minecraft:empty"}
execute if predicate fkbmtool:rng/70 run summon minecraft:skeleton ~ ~ ~ {Tags:["fkbm.ignore","fkbm.bogged.minion","fkbm.bogged.minion.init","smithed.entity","smithed.strict","global.ignore"],CustomName:"Skeleton Minion",attributes:[{id:"minecraft:scale",base:0.5}],DeathLootTable:"minecraft:empty"}
execute if predicate fkbmtool:rng/30 run summon minecraft:bogged ~ ~ ~ {Tags:["fkbm.ignore","fkbm.bogged.minion","fkbm.bogged.minion.init","smithed.entity","smithed.strict","global.ignore"],CustomName:"Bogged Minion",attributes:[{id:"minecraft:scale",base:0.5}],DeathLootTable:"minecraft:empty",sheared:1b}
execute if predicate fkbmtool:rng/10 run summon minecraft:bogged ~ ~ ~ {Tags:["fkbm.ignore","fkbm.bogged.minion","fkbm.bogged.minion.init","smithed.entity","smithed.strict","global.ignore"],CustomName:"Bogged Minion",attributes:[{id:"minecraft:scale",base:0.5}],DeathLootTable:"minecraft:empty",sheared:1b}
execute as @e[tag=fkbm.bogged.minion.init,distance=..5] run function fkbm:systems/mobs/loop/skill/bogged/summon_init

# spread
spreadplayers ~ ~ 1 3 false @e[tag=fkbm.bogged.minion.init,distance=..4]
execute at @e[tag=fkbm.bogged.minion.init,distance=..5] run particle minecraft:dust_color_transition{from_color:[.7f,.7f,.7f],scale:2f,to_color:[.3f,.3f,.3f]} ~ ~.5 ~ .3 .4 .3 0 5
tag @e[tag=fkbm.bogged.minion.init,distance=..4] remove fkbm.bogged.minion.init

# fx
particle minecraft:dust_color_transition{from_color:[.7f,.7f,.7f],scale:2f,to_color:[.3f,.3f,.3f]} ~ ~1 ~ .4 .5 .4 0 20
playsound minecraft:particle.soul_escape hostile @a[distance=..16] ~ ~1.6 ~ 10 1

# cd
scoreboard players operation @s fkbm.cd2 = #40 fktool
