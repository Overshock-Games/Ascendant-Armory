# add dig point
execute as @n[type=minecraft:marker,tag=fkbm.zombie.dig,distance=...1] run scoreboard players operation @s fkbm.var += MobGameplayLatency fkbm.options

# new dig
execute unless entity @n[type=minecraft:marker,tag=fkbm.zombie.dig,distance=...1] run summon minecraft:marker ~ ~ ~ {Tags:["fkbm.zombie.dig","global.ignore","smithed.entity","smithed.strict"]}

# digged
execute as @n[type=minecraft:marker,tag=fkbm.zombie.dig,distance=...1] if score @s fkbm.var >= #3 fktool run fill ~ ~ ~ ~ ~ ~ minecraft:air destroy
execute as @n[type=minecraft:marker,tag=fkbm.zombie.dig,distance=...1] if score @s fkbm.var >= #3 fktool run kill @s
