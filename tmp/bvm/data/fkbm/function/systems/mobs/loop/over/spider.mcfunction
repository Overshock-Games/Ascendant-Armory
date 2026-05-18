# ceiling
execute if score SpiderCeiling fkbm.options matches 1 run function fkbm:systems/mobs/loop/skill/spider/ceiling

# spit
execute if score MobGriefing fkbm.options matches 2.. if data entity @s last_hurt_by_player if entity @s[tag=!fkbm.spider.spited] if entity @p[distance=2..8,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/spider/spit_cobweb
execute unless entity @p[distance=..9,gamemode=!creative,gamemode=!spectator] run tag @s remove fkbm.spider.spited

# mommy
execute if entity @s[tag=fkbm.spider.mommy,tag=!fkbm.spider.summoned,scores={fkbm.cd1=..0}] if entity @p[distance=..16,gamemode=!creative,gamemode=!spectator] run function fkbm:systems/mobs/loop/skill/spider/summon_baby
execute if entity @s[tag=fkbm.spider.summoned] at @s unless entity @e[type=minecraft:spider,tag=fkbm.spider.baby,distance=..5] run tag @s remove fkbm.spider.summoned
scoreboard players operation @s[tag=fkbm.spider.mommy,scores={fkbm.cd1=1..}] fkbm.cd1 -= MobGameplayLatency fkbm.options

# mommy aggro babies on hit (see adv)
scoreboard players operation @s[tag=fkbm.spider.mommy,scores={fkbm.cd3=1..}] fkbm.cd3 -= MobGameplayLatency fkbm.options

# cocoon
execute if score MobGriefing fkbm.options matches 1.. if entity @s[tag=fkbm.spider.cocoon,scores={fkbm.cd2=..0}] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] unless entity @e[type=minecraft:marker,tag=fkbm.spider.cocoon,distance=..16] run function fkbm:systems/mobs/loop/skill/spider/cocoon_craft
scoreboard players operation @s[tag=fkbm.spider.cocoon,scores={fkbm.cd2=1..}] fkbm.cd2 -= MobGameplayLatency fkbm.options

# sticky path
execute if score MobGriefing fkbm.options matches 1.. if entity @s[tag=fkbm.spider.stickypath] if entity @p[distance=..8,gamemode=!creative,gamemode=!spectator] unless block ~ ~ ~ minecraft:cobweb unless block ~ ~-1 ~ #fkbm:spider_cocoon run function fkbm:systems/mobs/loop/skill/spider/stickypath_place

tag @s add fkbm.looped
