# parameters
scoreboard players set #mean fktool 0

scoreboard players set #total fktool 0
$execute store result score #tmp fktool run random value $(min)..$(max)
scoreboard players operation #total fktool += #tmp fktool
$execute store result score #tmp fktool run random value $(min)..$(max)
scoreboard players operation #total fktool += #tmp fktool
$execute store result score #tmp fktool run random value $(min)..$(max)
scoreboard players operation #total fktool += #tmp fktool
scoreboard players operation #total fktool /= #3 fktool
scoreboard players operation #mean fktool += #total fktool

scoreboard players set #total fktool 0
$execute store result score #tmp fktool run random value $(min)..$(max)
scoreboard players operation #total fktool += #tmp fktool
$execute store result score #tmp fktool run random value $(min)..$(max)
scoreboard players operation #total fktool += #tmp fktool
$execute store result score #tmp fktool run random value $(min)..$(max)
scoreboard players operation #total fktool += #tmp fktool
scoreboard players operation #total fktool /= #3 fktool
scoreboard players operation #mean fktool += #total fktool

# mean
scoreboard players operation #mean fktool /= #2 fktool

# result
execute store result score Random fktool run return run scoreboard players get #mean fktool
