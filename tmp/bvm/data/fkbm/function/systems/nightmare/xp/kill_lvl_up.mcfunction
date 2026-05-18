advancement revoke @s only fkbm:nightmare/kill_lvl_up

scoreboard players operation @s fkbm.nightmare.xp += NightmareLvlUpKill fkbm.options
function fkbm:systems/nightmare/xp/clamp_lvl
execute as @a[scores={fkbm.nightmare.xp=100..}] run function fkbm:systems/nightmare/xp/lvl_up
