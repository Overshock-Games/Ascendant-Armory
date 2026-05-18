# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Stray"
execute if entity @s[tag=fkbm.stray.frozenthorns,tag=fkbm.stray.iceprison] run data modify storage fkbm:data cname.type.value set value "Frozen Stray"
execute if entity @s[tag=fkbm.stray.frostwalker,tag=fkbm.stray.fireresist] run data modify storage fkbm:data cname.type.value set value "Foggy Stray"

## rarity/100
# skills
execute if entity @s[tag=fkbm.stray.torch] run scoreboard players add #rarity fkbm.options 3
execute if entity @s[tag=fkbm.stray.frozenthorns] run scoreboard players add #rarity fkbm.options 12
execute if entity @s[tag=fkbm.stray.frostwalker] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.stray.fireresist] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.stray.iceprison] run scoreboard players add #rarity fkbm.options 15

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
