# explosion
execute if score #IndividualDiff fkbm.options matches 1 run summon minecraft:creeper ~ -10 ~ {ignited:1b,Fuse:6,ExplosionRadius:2b,Tags:["fkbm.zombified_piglin.explode","fkbm.touched","smithed.entity","smithed.strict"],Silent:1b,DeathLootTable:"minecraft:empty",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:5,show_particles:0b}]}
execute if score #IndividualDiff fkbm.options matches 2 run summon minecraft:creeper ~ -10 ~ {ignited:1b,Fuse:6,ExplosionRadius:3b,Tags:["fkbm.zombified_piglin.explode","fkbm.touched","smithed.entity","smithed.strict"],Silent:1b,DeathLootTable:"minecraft:empty",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:5,show_particles:0b}]}
execute if score #IndividualDiff fkbm.options matches 3 run summon minecraft:creeper ~ -10 ~ {ignited:1b,Fuse:6,ExplosionRadius:4b,Tags:["fkbm.zombified_piglin.explode","fkbm.touched","smithed.entity","smithed.strict"],Silent:1b,DeathLootTable:"minecraft:empty",NoAI:1b,active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:5,show_particles:0b}]}
tag @s add fkbm.zombified_piglin.explode_point

# copy parent name
execute positioned ~ -10 ~ run data modify entity @n[type=minecraft:creeper,tag=fkbm.zombified_piglin.explode] CustomName set from entity @s CustomName

# fx
playsound minecraft:entity.zombified_piglin.death hostile @a[distance=..16] ~ ~1.6 ~ 3 2 1
particle minecraft:large_smoke ~ ~1.5 ~ .3 .3 .3 0 10

# schedule explosion
schedule function fkbm:systems/mobs/loop/skill/zombified_piglin/explode_5t 5t append
