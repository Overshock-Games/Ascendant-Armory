# compatibility: do not modify special mobs
function fkbm:compatibility/pre_secure

# totem: prevent mobs modification
execute run function fkbm:systems/totem/checks

# modify mobs
execute as @a[scores={fkbm.dim=0}] at @s run function fkbm:systems/mobs/touch/over with storage fkbm:data touch
execute as @a[scores={fkbm.dim=-1}] at @s run function fkbm:systems/mobs/touch/nether with storage fkbm:data touch
execute as @a[scores={fkbm.dim=1}] at @s run function fkbm:systems/mobs/touch/end with storage fkbm:data touch

# compatibility: secure my mobs
function fkbm:compatibility/post_secure
