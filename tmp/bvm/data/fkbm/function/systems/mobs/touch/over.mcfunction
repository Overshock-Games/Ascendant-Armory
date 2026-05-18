# set difficulty
function fkbm:systems/difficulty/set_individual
function fkbm:systems/nightmare/set_individual

# filter entity to enhance
$execute as @e[type=#fkbm:can_be_enhanced/over,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..$(radius),sort=nearest,limit=$(count)] run function fkbm:systems/mobs/touch/over/find
