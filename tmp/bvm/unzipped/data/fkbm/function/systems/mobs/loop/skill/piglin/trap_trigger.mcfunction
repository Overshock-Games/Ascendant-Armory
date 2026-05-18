# trigger
effect give @p[gamemode=!creative,gamemode=!spectator,distance=..1] minecraft:slowness 1 4 true
summon minecraft:evoker_fangs ~ ~-.2 ~

# fx
particle minecraft:dust_color_transition{from_color:[1f,.2f,.1f],scale:1f,to_color:[.5f,.2f,1f]} ~ ~.5 ~ .1 .3 .1 0 10
particle minecraft:dust_color_transition{from_color:[1f,.7f,.7f],scale:1f,to_color:[1f,.9f,.9f]} ~ ~.1 ~ .6 .05 .6 0 50
playsound minecraft:block.stone_button.click_off player @a[distance=..16] ~ ~ ~ 2 .5
playsound minecraft:entity.evoker.cast_spell player @a[distance=..16] ~ ~ ~ 2 2

kill @s
