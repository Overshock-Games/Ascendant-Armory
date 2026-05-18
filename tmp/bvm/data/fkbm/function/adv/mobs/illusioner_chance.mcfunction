tag @s add fkbm.illusioner.chance
function fkbmtool:rng/get
execute if score Random fktool <= #8 fktool run function fkbm:systems/mobs/loop/skill/illusioner/spawn
