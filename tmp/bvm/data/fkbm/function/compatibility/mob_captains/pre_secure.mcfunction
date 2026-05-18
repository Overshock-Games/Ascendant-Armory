# ignore the pack's mobs
tag @e[type=#fkbm:can_be_enhanced/all,tag=ps-mob.captain,tag=!fkbm.ignore] add fkbm.ignore

# removing attr speed for already touched captain
execute as @e[type=#fkbm:can_be_enhanced/all,tag=ps-mob.captain,tag=fkbm.touched,tag=!fkbm.cleared] run attribute @s minecraft:movement_speed modifier remove ps-mob:captain
execute as @e[type=#fkbm:can_be_enhanced/all,tag=ps-mob.captain,tag=fkbm.touched,tag=!fkbm.cleared] run attribute @s minecraft:movement_speed modifier add ps-mob:captain 0.10 add_multiplied_base
tag @e[type=#fkbm:can_be_enhanced/all,tag=ps-mob.captain,tag=fkbm.touched,tag=!fkbm.cleared] add fkbm.cleared
