# init & reset
scoreboard players set #rarity fkbm.options 0

data modify storage fkbm:data cname.tmp.type set value '{"text":""}'
data modify storage fkbm:data cname.tmp.affinity set value '{"text":""}'
data modify storage fkbm:data cname.tmp.rarity set value '{"text":""}'
data modify storage fkbm:data cname.tmp.nightmare set value '{"text":""}'

data remove storage fkbm:data cname.type.value
data remove storage fkbm:data cname.nightmare.lvl
