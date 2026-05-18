# retouch if score NULL (on death)
execute unless score @s fkbm.cd3 matches 0 run return run function fkbm:systems/mobs/touch/skill/slime/child_touch

# fusion
execute if entity @s[tag=fkbm.slime.fusion,tag=!fkbm.slime.fusion.dead,scores={fkbm.cd1=..0,fkbm.var=..2}] run function fkbm:systems/mobs/loop/skill/slime/fusion
scoreboard players operation @s[tag=fkbm.slime.fusion,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# megajump
execute if entity @s[tag=fkbm.slime.megajump,scores={fkbm.cd2=..0}] if entity @p[distance=3..8,gamemode=!creative,gamemode=!spectator] if entity @s[nbt={OnGround:1b}] run function fkbm:systems/mobs/loop/skill/slime/megajump
scoreboard players operation @s[tag=fkbm.slime.megajump,scores={fkbm.cd2=1..}] fkbm.cd2 -= MobGameplayLatency fkbm.options

tag @s add fkbm.looped
