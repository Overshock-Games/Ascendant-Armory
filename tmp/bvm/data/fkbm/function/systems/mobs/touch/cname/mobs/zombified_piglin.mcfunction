# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Zombified Piglin"
execute if entity @s[tag=fkbm.zombified_piglin.infected] run data modify storage fkbm:data cname.type.value set value "Infected Piglin"
execute if entity @s[tag=fkbm.zombified_piglin.explosive] run data modify storage fkbm:data cname.type.value set value "Rotten Piglin"
execute if entity @s[tag=fkbm.zombified_piglin.infected,tag=fkbm.zombified_piglin.explosive] run data modify storage fkbm:data cname.type.value set value "Plagued Piglin"

## rarity/100
# skills
execute if entity @s[tag=fkbm.zombified_piglin.infected] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.zombified_piglin.explosive] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.zombified_piglin.aggressive] run scoreboard players add #rarity fkbm.options 30

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
