# if no individual difficulty, copy base one
execute unless score @s fkbm.difficulty matches 0.. run scoreboard players operation #IndividualDiff fkbm.options = #BaseDifficulty fkbm.options

# if individual difficulty, defines it for current touch
execute if score @s fkbm.difficulty matches 0.. run scoreboard players operation #IndividualDiff fkbm.options = @s fkbm.difficulty
