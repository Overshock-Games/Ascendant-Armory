# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Piglin"
execute if entity @s[tag=fkbm.piglin.tracker,tag=fkbm.piglin.trap] run data modify storage fkbm:data cname.type.value set value "Hunter Piglin"
execute if entity @s[tag=fkbm.piglin.axe,tag=fkbm.affinity.fast] run data modify storage fkbm:data cname.type.value set value "Runner Piglin"

## rarity/100
# skills
execute if entity @s[tag=fkbm.piglin.tracker] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.piglin.trap] run scoreboard players add #rarity fkbm.options 8
execute if entity @s[tag=fkbm.piglin.axe] run scoreboard players add #rarity fkbm.options 10

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 8
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 8
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
