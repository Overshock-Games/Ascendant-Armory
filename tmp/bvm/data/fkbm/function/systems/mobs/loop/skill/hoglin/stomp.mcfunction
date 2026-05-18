# stop moving
effect give @s minecraft:slowness 1 6 true
effect give @s minecraft:resistance 1 3 true

# fx
playsound minecraft:entity.hoglin.angry hostile @a[distance=..16] ~ ~ ~ 3 .5
execute if dimension minecraft:overworld run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~.2 ~ .5 .1 .5 0 50
execute if dimension minecraft:the_nether run particle minecraft:block{block_state:"minecraft:netherrack"} ~ ~.2 ~ .5 .1 .5 0 50

# cd
tag @s add fkbm.hoglin.stomp.step1
scoreboard players operation @s fkbm.cd1 = #15 fktool

# call impact
execute if score #IndividualDiff fkbm.options matches 1 run schedule function fkbm:systems/mobs/loop/skill/hoglin/stomp_1 30t
execute if score #IndividualDiff fkbm.options matches 2 run schedule function fkbm:systems/mobs/loop/skill/hoglin/stomp_1 25t
execute if score #IndividualDiff fkbm.options matches 3 run schedule function fkbm:systems/mobs/loop/skill/hoglin/stomp_1 20t
