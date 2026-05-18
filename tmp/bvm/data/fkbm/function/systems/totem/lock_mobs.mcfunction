# search for mobs in range
$execute as @e[type=#fkbm:can_be_enhanced/all,tag=!fkbm.touched,tag=!fkbm.ignore,distance=..$(range)] at @s run function fkbm:systems/totem/lock with storage fkbm:data totem
