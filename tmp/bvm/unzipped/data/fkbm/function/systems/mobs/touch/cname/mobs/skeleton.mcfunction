# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Skeleton"
execute if entity @s[tag=fkbm.skeleton.sword,tag=fkbm.skeleton.shield,tag=!fkbm.alpha] run data modify storage fkbm:data cname.type.value set value "Guard Skeleton"
execute if entity @s[tag=fkbm.skeleton.spear,tag=fkbm.skeleton.shield,tag=!fkbm.alpha] run data modify storage fkbm:data cname.type.value set value "Guard Skeleton"
execute if entity @s[tag=fkbm.skeleton.sword,tag=fkbm.alpha] run data modify storage fkbm:data cname.type.value set value "Captain Skeleton"

## rarity/100
# skills
execute if entity @s[tag=fkbm.skeleton.torch] run scoreboard players add #rarity fkbm.options 3
execute if entity @s[tag=fkbm.skeleton.fireresist] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.skeleton.smokebomb] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.skeleton.firebomb] run scoreboard players add #rarity fkbm.options 12
execute if entity @s[tag=fkbm.skeleton.sword] run scoreboard players add #rarity fkbm.options 12
execute if entity @s[tag=fkbm.skeleton.spear] run scoreboard players add #rarity fkbm.options 12
execute if entity @s[tag=fkbm.skeleton.shield] run scoreboard players add #rarity fkbm.options 20

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
