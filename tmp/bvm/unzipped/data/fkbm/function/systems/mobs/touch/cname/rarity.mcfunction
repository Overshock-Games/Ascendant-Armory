

















execute if score #rarity fkbm.options matches 00..19 run return run data modify storage fkbm:data cname.tmp.rarity set value '{"text":"[","color":"gray"},{"text":"★☆☆☆☆","color":"green"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 20..39 run return run data modify storage fkbm:data cname.tmp.rarity set value '{"text":"[","color":"gray"},{"text":"★★☆☆☆","color":"aqua"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 40..59 run return run data modify storage fkbm:data cname.tmp.rarity set value '{"text":"[","color":"gray"},{"text":"★★★☆☆","color":"light_purple"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 60..79 run return run data modify storage fkbm:data cname.tmp.rarity set value '{"text":"[","color":"gray"},{"text":"★★★★☆","color":"yellow"},{"text":"] ","color":"gray"}' 
execute if score #rarity fkbm.options matches 0080.. run return run data modify storage fkbm:data cname.tmp.rarity set value '{"text":"[","color":"gray"},{"text":"★★★★★","color":"#ff5145"},{"text":"] ","color":"gray"}' 
