# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Pillager"
execute if entity @s[tag=fkbm.pillager.multishot,tag=fkbm.pillager.quickcharge] run data modify storage fkbm:data cname.type.value set value "Shoot-Happy Pillager"

## rarity/100
# skills
execute if entity @s[tag=fkbm.pillager.firework] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.pillager.multishot] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.pillager.quickcharge] run scoreboard players add #rarity fkbm.options 12

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
