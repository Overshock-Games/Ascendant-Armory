# set difficulty
function fkbm:systems/difficulty/set_individual

# filter entity to enhance
$execute as @e[type=#fkbm:can_be_enhanced/end,tag=fkbm.touched,tag=!fkbm.looped,tag=!fkbm.ignore,distance=..$(radius),sort=nearest,limit=$(count)] at @s run function fkbm:systems/mobs/loop/end/find
