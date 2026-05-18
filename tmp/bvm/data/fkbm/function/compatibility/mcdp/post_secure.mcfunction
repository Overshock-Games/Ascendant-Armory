# make the pack ignore my mobs
#execute as @e[type=#fkbm:can_be_enhanced/all,tag=fkbm.touched] run tag @s add smithed.entity

# This pack handle 100% of vanilal mobs, wich means that it will prevent other mobs datapack to pick their own mobs.
# I don't want that. So I chose to not tag my mobs with the "smithed.entity". Instead, I do a pre check to not pickup already handled mobs. 
