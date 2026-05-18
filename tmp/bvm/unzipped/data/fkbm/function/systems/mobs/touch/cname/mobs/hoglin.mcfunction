# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Hoglin"
execute if entity @s[tag=fkbm.hoglin.stomp,tag=fkbm.affinity.strong,tag=!fkbm.alpha] run data modify storage fkbm:data cname.type.value set value "Digger Hoglin"
execute if entity @s[tag=fkbm.hoglin.regen,tag=fkbm.affinity.health] run data modify storage fkbm:data cname.type.value set value "Tenacious Hoglin"

## rarity/100
# skills
execute if entity @s[tag=fkbm.hoglin.hotblood] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.hoglin.regen] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.hoglin.stomp] run scoreboard players add #rarity fkbm.options 20

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 40


# set name
function fkbm:systems/mobs/touch/cname/generic
