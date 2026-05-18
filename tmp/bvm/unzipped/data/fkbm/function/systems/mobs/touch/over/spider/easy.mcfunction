## skills
execute if predicate fkbmtool:rng/25 run tag @s add fkbm.spider.cobweb
execute if predicate fkbmtool:rng/15 run tag @s add fkbm.spider.stickypath
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.spider.mommy
execute if predicate fkbmtool:rng/03 run tag @s add fkbm.spider.cocoon

## attributes
attribute @s minecraft:max_health modifier add fkbm 4 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.02 add_value
data merge entity @s {Health:20f}

# is baby summoned by mommy
execute if entity @s[tag=fkbm.spider.baby] run function fkbm:systems/mobs/touch/skill/spider/baby
