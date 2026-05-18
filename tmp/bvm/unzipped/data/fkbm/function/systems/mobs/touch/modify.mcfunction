# prevent modification %
scoreboard players reset #tmp fkbm.options
execute store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_percent
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignore

# prevent modification in structures
scoreboard players reset #tmp fkbm.options
execute at @s store result score #tmp fkbm.options run function fkbm:systems/mobs/touch/misc/prevent_location
execute if score #tmp fkbm.options matches 1 run return run tag @s add fkbm.ignore

# pre modification
$execute if function fkbm:systems/mobs/touch/$(dim)/$(mob)/pre run scoreboard players set #trash fkbm.options 1
execute unless entity @s run return fail

# difficulty
$execute if score #IndividualDiff fkbm.options matches 1 run function fkbm:systems/mobs/touch/$(dim)/$(mob)/easy
$execute if score #IndividualDiff fkbm.options matches 2 run function fkbm:systems/mobs/touch/$(dim)/$(mob)/normal
$execute if score #IndividualDiff fkbm.options matches 3 run function fkbm:systems/mobs/touch/$(dim)/$(mob)/hard

# affinity
$execute run function fkbm:systems/mobs/touch/affinity/mobs/$(mob)

# custom name
$execute if score Cname fkbm.options matches 1 unless entity @s[tag=fkbm.no_customname] run function fkbm:systems/mobs/touch/cname/mobs/$(mob)

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/nightmare/touch

# post modification
$execute if function fkbm:systems/mobs/touch/$(dim)/$(mob)/post run scoreboard players set #trash fkbm.options 1

# do not modify again
tag @s add fkbm.touched
