# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Wither Skeleton"
execute if entity @s[tag=fkbm.wither_skeleton.sword,tag=fkbm.wither_skeleton.darkness] run data modify storage fkbm:data cname.type.value set value "Leech Wither Skeleton"
execute if entity @s[tag=fkbm.wither_skeleton.shield,tag=fkbm.wither_skeleton.thorns] run data modify storage fkbm:data cname.type.value set value "Paladin Wither Skeleton"
execute if entity @s[tag=fkbm.wither_skeleton.sword,tag=fkbm.wither_skeleton.shield,tag=fkbm.wither_skeleton.thorns] run data modify storage fkbm:data cname.type.value set value "Champion Wither Skeleton"
execute if entity @s[tag=fkbm.wither_skeleton.bow,tag=fkbm.wither_skeleton.flying_blades] run data modify storage fkbm:data cname.type.value set value "Assassin Wither Skeleton"
execute if entity @s[tag=fkbm.wither_skeleton.darkness,tag=fkbm.wither_skeleton.flying_blades] run data modify storage fkbm:data cname.type.value set value "BattleMage Wither Skeleton"

## rarity/100
# skills
execute if entity @s[tag=fkbm.wither_skeleton.lookbreak] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.wither_skeleton.shield] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.wither_skeleton.thorns] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.wither_skeleton.bow] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.wither_skeleton.sword] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.wither_skeleton.darkness] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.wither_skeleton.flying_blades] run scoreboard players add #rarity fkbm.options 15

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
