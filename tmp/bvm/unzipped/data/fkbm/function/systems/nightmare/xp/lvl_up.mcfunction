# lvl up
scoreboard players remove @s fkbm.nightmare.xp 100
scoreboard players add @s fkbm.nightmare.lvl 1

# clamp
function fkbm:systems/nightmare/xp/clamp_lvl

# display
function fkbm:systems/nightmare/display/print_progressive

# sound
execute if score NightmareLvlUpSound fkbm.options matches 1 run function fkbm:systems/nightmare/xp/lvl_up_sound
