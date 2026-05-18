# stomp
effect give @a[gamemode=!creative,gamemode=!spectator,distance=..6,nbt={OnGround:1b}] minecraft:slowness 2 2 true
execute as @a[gamemode=!creative,gamemode=!spectator,distance=..6,nbt={OnGround:1b}] at @s run tp @s ~ ~-.6 ~ ~ ~30

# fx
playsound minecraft:entity.hoglin.step hostile @a[distance=..32] ~ ~ ~ 5 .8
playsound minecraft:entity.generic.explode hostile @a[distance=..32] ~ ~ ~ 1 .5
particle minecraft:dust_color_transition{from_color:[.8f,.8f,.6f],scale:2f,to_color:[2f,1f,.9f]} ~ ~.2 ~ 2 .1 2 0 50
execute if dimension minecraft:overworld run particle minecraft:block{block_state:"minecraft:dirt"} ~ ~.2 ~ 2 .1 2 0 200
execute if dimension minecraft:the_nether run particle minecraft:block{block_state:"minecraft:netherrack"} ~ ~.2 ~ 2 .1 2 0 200

tag @s remove fkbm.hoglin.stomp.step1
