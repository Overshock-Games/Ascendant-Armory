# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Husk"
execute if entity @s[tag=fkbm.husk.door,tag=fkbm.husk.fence] run data modify storage fkbm:data cname.type.value set value "Scratcher Husk"
execute if entity @s[tag=fkbm.husk.regen,tag=fkbm.affinity.resistant] run data modify storage fkbm:data cname.type.value set value "Mutant Husk"

## rarity/100
# skills
execute if entity @s[tag=fkbm.husk.torch] run scoreboard players add #rarity fkbm.options 2
execute if entity @s[tag=fkbm.husk.door] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.husk.fence] run scoreboard players add #rarity fkbm.options 3
execute if entity @s[tag=fkbm.husk.hitslow] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.husk.regen] run scoreboard players add #rarity fkbm.options 12

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
