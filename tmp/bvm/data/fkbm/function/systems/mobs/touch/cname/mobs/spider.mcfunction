# resets
function fkbm:systems/mobs/touch/cname/init


# type
execute run data modify storage fkbm:data cname.type.value set value "Spider"
execute if entity @s[tag=fkbm.spider.stickypath,tag=fkbm.spider.cocoon] run data modify storage fkbm:data cname.type.value set value "Weaver Spider"
execute if entity @s[tag=fkbm.spider.baby] run data modify storage fkbm:data cname.type.value set value "Baby Spider"
execute if entity @s[tag=fkbm.spider.mommy] run data modify storage fkbm:data cname.type.value set value "Mother Spider"
execute if entity @s[tag=fkbm.spider.mommy,tag=fkbm.spider.cocoon] run data modify storage fkbm:data cname.type.value set value "Progenitor Spider"

## rarity/100
# skills
execute if entity @s[tag=fkbm.spider.cobweb] run scoreboard players add #rarity fkbm.options 5
execute if entity @s[tag=fkbm.spider.stickypath] run scoreboard players add #rarity fkbm.options 7
execute if entity @s[tag=fkbm.spider.mommy] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.spider.cocoon] run scoreboard players add #rarity fkbm.options 20
execute if entity @s[tag=fkbm.spider.baby] run scoreboard players remove #rarity fkbm.options 20

# affinity
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.weak] run scoreboard players add #rarity fkbm.options 0
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.health] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.resistant] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.heavy] run scoreboard players add #rarity fkbm.options 10
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.strong] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=!fkbm.alpha,tag=fkbm.affinity.fast] run scoreboard players add #rarity fkbm.options 15
execute if entity @s[tag=fkbm.alpha] run scoreboard players add #rarity fkbm.options 30


# set name
function fkbm:systems/mobs/touch/cname/generic
