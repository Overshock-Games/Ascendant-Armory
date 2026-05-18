# axe offhand
execute if predicate fkbm:generic/empty_offhand run item replace entity @s weapon.offhand with minecraft:golden_axe[damage=25]

# generic
scoreboard players set @s[tag=fkbm.piglin_brute.berserk] fkbm.cd2 0
