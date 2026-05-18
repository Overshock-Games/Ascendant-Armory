# fkbm.cd1 score cleaning (+ init mobs using this score)
scoreboard objectives remove fkbm.cd1
scoreboard objectives add fkbm.cd1 dummy {"text":"fkbm.cd1","color":"#80a0b4"}
scoreboard players set @e[type=minecraft:bogged,tag=fkbm.bogged.shield] fkbm.cd1 0
scoreboard players set @e[type=minecraft:enderman,tag=fkbm.enderman.lookbreak] fkbm.cd1 0
scoreboard players set @e[type=minecraft:evoker,tag=fkbm.evoker.groupregen] fkbm.cd1 0
scoreboard players set @e[type=minecraft:hoglin,tag=fkbm.hoglin.stomp] fkbm.cd1 0
scoreboard players set @e[type=minecraft:husk,tag=fkbm.husk.regen] fkbm.cd1 0
scoreboard players set @e[type=minecraft:illusioner,tag=fkbm.illusioner.heal] fkbm.cd1 0
scoreboard players set @e[type=minecraft:piglin,tag=fkbm.piglin.trap] fkbm.cd1 0
scoreboard players set @e[type=minecraft:piglin_brute,tag=fkbm.piglin_brute.shield] fkbm.cd1 0
scoreboard players set @e[type=minecraft:pillager,tag=fkbm.pillager.firework] fkbm.cd1 0
scoreboard players set @e[type=minecraft:skeleton,tag=fkbm.skeleton.shield] fkbm.cd1 0
scoreboard players set @e[type=minecraft:slime,tag=fkbm.slime.fusion] fkbm.cd1 0
scoreboard players set @e[type=minecraft:spider,tag=fkbm.spider.mommy] fkbm.cd1 0
scoreboard players set @e[type=minecraft:stray,tag=fkbm.stray.iceprison] fkbm.cd1 0
scoreboard players set @e[type=minecraft:vex,tag=fkbm.vex.dodge] fkbm.cd1 0
scoreboard players set @e[type=minecraft:witch,tag=fkbm.witch.zonya] fkbm.cd1 0
scoreboard players set @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.shield] fkbm.cd1 0
scoreboard players set @e[type=minecraft:zombified_piglin,tag=fkbm.zombified_piglin.infected] fkbm.cd1 0

# fkbm.cd2 score cleaning (+ init mobs using this score)
scoreboard objectives remove fkbm.cd2
scoreboard objectives add fkbm.cd2 dummy {"text":"fkbm.cd2","color":"#80a0b4"}
scoreboard players set @e[type=minecraft:bogged,tag=fkbm.bogged.summoner] fkbm.cd2 0
scoreboard players set @e[type=minecraft:piglin_brute,tag=fkbm.piglin_brute.berserk] fkbm.cd2 0
scoreboard players set @e[type=minecraft:slime,tag=fkbm.slime.megajump] fkbm.cd2 0
scoreboard players set @e[type=minecraft:spider,tag=fkbm.spider.cocoon] fkbm.cd2 0
scoreboard players set @e[type=minecraft:stray,tag=fkbm.stray.frozenthorns] fkbm.cd2 0
scoreboard players set @e[type=minecraft:witch,tag=fkbm.witch.summon] fkbm.cd2 0
scoreboard players set @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.darkness] fkbm.cd2 0

# fkbm.cd3 score cleaning (+ init mobs using this score)
scoreboard objectives remove fkbm.cd3
scoreboard objectives add fkbm.cd3 dummy {"text":"fkbm.cd3","color":"#80a0b4"}
scoreboard players set @e[type=minecraft:spider,tag=fkbm.spider.mommy] fkbm.cd3 0
scoreboard players set @e[type=minecraft:wither_skeleton,tag=fkbm.wither_skeleton.flying_blades] fkbm.cd3 0

# fkbm.var score cleaning (+ init mobs using this score)
scoreboard objectives remove fkbm.var
scoreboard objectives add fkbm.var dummy {"text":"fkbm.var","color":"#80a0b4"}
scoreboard players set @e[type=minecraft:enderman,tag=fkbm.enderman.vortex] fkbm.var 0
scoreboard players set @e[type=minecraft:evoker,tag=fkbm.evoker.root] fkbm.var 0
scoreboard players set @e[type=minecraft:zombified_piglin,tag=fkbm.zombified_piglin.explosive] fkbm.var 0

# remaining markers
execute as @e[type=minecraft:marker,tag=fkbm.zombie.dig] at @s unless entity @p[distance=..10] run kill @s
execute as @e[type=minecraft:marker,tag=fkbm.spider.stickypath] at @s unless entity @p[gamemode=!creative,gamemode=!spectator,distance=..16] run function fkbm:systems/mobs/loop/skill/spider/stickypath_unplace

# give totem recipe
recipe give @a fkbm:totem/totem

# secure player advancements
function fkbm:adv/revoke_all

# check compatibility
function fkbm:compatibility/checks

# check mob_griefing
scoreboard players operation MobGriefing fkbm.options = MobGriefing.Enable fkbm.options
execute if score MobGriefing.Enable fkbm.options matches 3 store result score #tmp fkbm.options run gamerule mob_griefing
execute if score #tmp fkbm.options matches 0 run scoreboard players set MobGriefing fkbm.options 1
execute if score #tmp fkbm.options matches 1 run scoreboard players set MobGriefing fkbm.options 2


schedule function fkbm:schedules/cleaner 300s
