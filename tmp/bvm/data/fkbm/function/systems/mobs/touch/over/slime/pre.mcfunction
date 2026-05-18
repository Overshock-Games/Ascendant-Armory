# only Size 2+ can be alpha
execute store result score @s fkbm.var run data get entity @s Size 1
execute unless score @s fkbm.var matches 2.. run return fail

# alpha chance (get all affinity buffs)
execute run function fkbmtool:rng/get

execute if score #3 fktool >= Random fktool run tag @s add fkbm.alpha

# alpha size
execute unless entity @s[tag=fkbm.alpha] run return fail
data merge entity @s {Size:4}
scoreboard players set @s fkbm.var 4
