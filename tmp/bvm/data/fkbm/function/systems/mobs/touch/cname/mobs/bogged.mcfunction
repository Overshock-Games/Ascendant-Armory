# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Bogged"
execute if entity @s[tag=fkbm.bogged.spear,tag=!fkbm.bogged.shield] run data modify storage fkbm:data cname.type.value set value "Scout Bogged"
execute if entity @s[tag=fkbm.bogged.summoner,tag=fkbm.bogged.infested] run data modify storage fkbm:data cname.type.value set value "Shaman Bogged"
execute if entity @s[tag=fkbm.bogged.infested,tag=fkbm.bogged.poison_leak] run data modify storage fkbm:data cname.type.value set value "Putrid Bogged"
execute if entity @s[tag=fkbm.bogged.spear,tag=fkbm.bogged.shield,tag=fkbm.bogged.armored,tag=!fkbm.alpha] run data modify storage fkbm:data cname.type.value set value "Lancer Bogged"
execute if entity @s[tag=fkbm.bogged.summoner,tag=fkbm.bogged.poison_leak,tag=fkbm.bogged.sword,tag=fkbm.bogged.shield,tag=fkbm.bogged.armored] run data modify storage fkbm:data cname.type.value set value "Champion Bogged"

## rarity/100
# skills
execute if entity @s[tag=fkbm.bogged.torch] run scoreboard players add #rarity fkbm.options 3
execute if entity @s[tag=fkbm.bogged.fireresist] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.bogged.poison_leak] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.bogged.infested] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.bogged.summoner] run scoreboard players add #rarity fkbm.options 25
execute if entity @s[tag=fkbm.bogged.armored] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.bogged.sword] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.bogged.spear] run scoreboard players add #rarity fkbm.options 12
execute if entity @s[tag=fkbm.bogged.shield] run scoreboard players add #rarity fkbm.options 20

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 20


# set name
function fkbm:systems/mobs/touch/cname/generic
