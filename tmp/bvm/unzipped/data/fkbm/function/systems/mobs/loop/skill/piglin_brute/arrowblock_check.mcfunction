# block
execute store result score #tmp fkbm.options as @n[type=minecraft:arrow,tag=!fkbm.piglin_brute.blocked,distance=..3,nbt={inGround:0b}] at @s run function fkbm:systems/mobs/loop/skill/piglin_brute/arrowblock

# cd
execute if score #tmp fkbm.options matches 1 run scoreboard players operation @s fkbm.cd1 = #1 fktool
