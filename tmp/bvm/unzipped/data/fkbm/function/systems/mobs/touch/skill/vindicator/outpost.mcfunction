# in Pillager Outposts, spawn some vindicator instead
function fkbmtool:rng/get
execute if score Random fktool > #30 fktool run return fail

# do
execute summon minecraft:vindicator run function fkbm:systems/mobs/touch/modify {mob:"vindicator",dim:"over"}
tp @s ~ ~-200 ~
