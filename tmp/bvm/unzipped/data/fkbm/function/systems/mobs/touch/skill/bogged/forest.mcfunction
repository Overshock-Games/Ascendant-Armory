# in Pillager Outposts, spawn some vindicator instead
function fkbmtool:rng/get
execute if score Random fktool > #10 fktool run return fail

# do
execute summon minecraft:bogged run function fkbm:systems/mobs/touch/modify {mob:"bogged",dim:"over"}
tp @s ~ ~-200 ~
