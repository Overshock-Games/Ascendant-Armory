# project
data modify storage fkbm:text project.name set value "BetterVanillaMobs"
data modify storage fkbm:text project.shortname set value "BVM"
data modify storage fkbm:text project.print set value [{"text":"[","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"storage":"fktool:info","nbt":"load.devby","interpret":true}]}},{"storage":"fkbm:text","nbt":"project.name","interpret":true,"bold":true,"color":"gold"},{"text":"] ","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"storage":"fktool:info","nbt":"load.devby","interpret":true}]}}]
data modify storage fkbm:text project.print_short set value [{"text":"[","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"storage":"fktool:info","nbt":"load.devby","interpret":true}]}},{"storage":"fkbm:text","nbt":"project.shortname","interpret":true,"bold":true,"color":"gold"},{"text":"] ","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"storage":"fktool:info","nbt":"load.devby","interpret":true}]}}]
data modify storage fkbm:text project.compatibility set value "26.1+"

# scores
scoreboard objectives add fkbm.options dummy {"text":"Better Vanilla Mobs Options","color":"#80a0b4"}
scoreboard objectives add fkbm.difficulty dummy {"text":"BVM individual difficulty","color":"#80a0b4"}
scoreboard objectives add fkbm.nightmare.force dummy {"text":"fkbm.nightmare.force","color":"#80a0b4"}
scoreboard objectives add fkbm.nightmare.lvl dummy {"text":"BVM nightmare levels","color":"#80a0b4"}
scoreboard objectives add fkbm.nightmare.xp dummy {"text":"fkbm.nightmare.xp","color":"#80a0b4"}
scoreboard objectives add fkbm.compat dummy {"text":"BVM Compatibility","color":"#80a0b4"}
scoreboard objectives add fkbm.death deathCount {"text":"fkbm.death","color":"#80a0b4"}
scoreboard objectives add fkbm.dim dummy {"text":"fkbm.dim","color":"#80a0b4"}
scoreboard objectives add fkbm.cd1 dummy {"text":"fkbm.cd1","color":"#80a0b4"}
scoreboard objectives add fkbm.cd2 dummy {"text":"fkbm.cd2","color":"#80a0b4"}
scoreboard objectives add fkbm.cd3 dummy {"text":"fkbm.cd3","color":"#80a0b4"}
scoreboard objectives add fkbm.var dummy {"text":"fkbm.var","color":"#80a0b4"}

# constants
team add fkbm.spider
team modify fkbm.spider nametagVisibility never

# config
function fkbm:lang/us
function fkbm:compatibility/checks
function fkbm:properties
function fkbm:adv/revoke_all
function fkbm:schedules/list

# compatibility
scoreboard players set MCDP fkbm.compat 1
schedule function fkbm:compatibility/checks 40t
schedule function fkbm:compatibility/infos 42t

# display
data modify storage fkbm:text project.print set value [{"text":"[","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"storage":"fktool:info","nbt":"load.devby","interpret":true}]}},{"storage":"fkbm:text","nbt":"project.name","interpret":true,"bold":true,"color":"gold"},{"text":"] ","bold":true,"color":"gold","hover_event":{"action":"show_text","value":[{"storage":"fktool:info","nbt":"load.devby","interpret":true}]}}]
tellraw @a ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"storage":"fktool:info","nbt":"load.enabled","interpret":true},{"text":" ("},{"storage":"fkbm:text","nbt":"project.compatibility","interpret":true},{"text":"). "},{"storage":"fktool:info","nbt":"load.options","interpret":true},{"text":"[click here]","bold":true,"color":"aqua","click_event":{"action":"suggest_command","command":"/function fkbm:options/get"}}]
tellraw @a ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"storage":"fktool:info","nbt":"load.networks","interpret":true}]
tellraw @a ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"storage":"fktool:info","nbt":"load.free","interpret":true}]
