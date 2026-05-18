# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Zombie"
execute if entity @s[tag=fkbm.zombie.door,tag=fkbm.zombie.fence] run data modify storage fkbm:data cname.type.value set value "Scratcher Zombie"

## rarity/100
# skills
execute if entity @s[tag=fkbm.zombie.torch] run scoreboard players add #rarity fkbm.options 3
execute if entity @s[tag=fkbm.zombie.door] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.zombie.fireresist] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.zombie.fence] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.zombie.dig] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.zombie.build] run scoreboard players add #rarity fkbm.options 10

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
