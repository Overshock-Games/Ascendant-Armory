# clamp base difficulty
execute if score BaseDifficulty fkbm.options matches ..-1 run scoreboard players set BaseDifficulty fkbm.options 4
execute if score BaseDifficulty fkbm.options matches 5.. run scoreboard players set BaseDifficulty fkbm.options 4

# auto set difficulty
execute if score BaseDifficulty fkbm.options matches 0..3 run scoreboard players operation #BaseDifficulty fkbm.options = BaseDifficulty fkbm.options
execute if score BaseDifficulty fkbm.options matches 0004 store result score Difficulty fkbm.options run difficulty
execute if score BaseDifficulty fkbm.options matches 0004 run scoreboard players operation #BaseDifficulty fkbm.options = Difficulty fkbm.options
execute if score BaseDifficulty fkbm.options matches 0004 run scoreboard players reset Difficulty fkbm.options

# clamp nigthmare difficulty
execute if score NightmareBaseLvl fkbm.options matches ..-1 run scoreboard players set NightmareBaseLvl fkbm.options 0
execute if score NightmareBaseLvl fkbm.options matches 101.. run scoreboard players set NightmareBaseLvl fkbm.options 100

# update affinity weights
function fkbm:systems/mobs/touch/affinity/set_weight

# clamp MobModifyPercent
execute if score MobModifyPercent fkbm.options matches ..-1 run scoreboard players set MobModifyPercent fkbm.options 0
execute if score MobModifyPercent fkbm.options matches 101.. run scoreboard players set MobModifyPercent fkbm.options 100

# clamp MobModifyRadius
execute if score MobModifyRadius fkbm.options matches ..031 run scoreboard players set MobModifyRadius fkbm.options 32
execute if score MobModifyRadius fkbm.options matches 257.. run scoreboard players set MobModifyRadius fkbm.options 256
execute store result storage fkbm:data touch.radius int 1 run scoreboard players get #80 fktool

# clamp MobModifyCount
execute if score MobModifyCount fkbm.options matches ..000 run scoreboard players set MobModifyCount fkbm.options 1
execute if score MobModifyCount fkbm.options matches 100.. run scoreboard players set MobModifyCount fkbm.options 99
execute store result storage fkbm:data touch.count int 1 run scoreboard players get #8 fktool

# clamp MobLoopRadius
execute if score MobLoopRadius fkbm.options matches ..007 run scoreboard players set MobLoopRadius fkbm.options 8
execute if score MobLoopRadius fkbm.options matches 33.. run scoreboard players set MobLoopRadius fkbm.options 32
execute store result storage fkbm:data loop.radius int 1 run scoreboard players get #25 fktool

# clamp MobLoopCount
execute if score MobLoopCount fkbm.options matches ..000 run scoreboard players set MobLoopCount fkbm.options 1
execute if score MobLoopCount fkbm.options matches 33.. run scoreboard players set MobLoopCount fkbm.options 32
execute store result storage fkbm:data loop.count int 1 run scoreboard players get #8 fktool


schedule function fkbm:schedules/misc 15s
