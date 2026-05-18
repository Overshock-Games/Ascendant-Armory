$data modify entity @s CustomName set value [$(rarity),$(affinity),$(type),$(nightmare)]
execute if score Cname.visible fkbm.options matches 1 run data modify entity @s CustomNameVisible set value 1b
