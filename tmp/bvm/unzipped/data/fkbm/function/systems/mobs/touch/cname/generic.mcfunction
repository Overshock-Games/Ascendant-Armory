# rarity
execute run function fkbm:systems/mobs/touch/cname/rarity with storage fkbm:data cname.rarity

# affinity
execute run function fkbm:systems/mobs/touch/cname/affinity with storage fkbm:data cname.affinity

# type
execute run function fkbm:systems/mobs/touch/cname/type with storage fkbm:data cname.type

# nightmare
execute if score #IndividualNightmare fkbm.options matches 1.. store result storage fkbm:data cname.nightmare.lvl int 1 run scoreboard players get #IndividualNightmare fkbm.options
execute if score #IndividualNightmare fkbm.options matches 1.. run function fkbm:systems/mobs/touch/cname/nightmare with storage fkbm:data cname.nightmare

# set name
function fkbm:systems/mobs/touch/cname/write with storage fkbm:data cname.tmp
