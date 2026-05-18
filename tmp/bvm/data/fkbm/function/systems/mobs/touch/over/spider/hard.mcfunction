## skills
execute if predicate fkbmtool:rng/75 run tag @s add fkbm.spider.cobweb
execute if predicate fkbmtool:rng/45 run tag @s add fkbm.spider.stickypath
execute if predicate fkbmtool:rng/30 run tag @s add fkbm.spider.mommy
execute if predicate fkbmtool:rng/10 run tag @s add fkbm.spider.cocoon

## attributes
attribute @s minecraft:max_health modifier add fkbm 14 add_value
attribute @s minecraft:movement_speed modifier add fkbm 0.06 add_value
data merge entity @s {Health:30f}

# is baby summoned by mommy
execute if entity @s[tag=fkbm.spider.baby] run function fkbm:systems/mobs/touch/skill/spider/baby
