# set dimension
execute as @a store result score @s fkbm.dim run function fkbm:systems/generic/get_dim

# gameplay
execute as @a[scores={fkbm.dim=0}] at @s run function fkbm:systems/mobs/loop/over with storage fkbm:data loop
execute as @a[scores={fkbm.dim=-1}] at @s run function fkbm:systems/mobs/loop/nether with storage fkbm:data loop
execute as @a[scores={fkbm.dim=1}] at @s run function fkbm:systems/mobs/loop/end with storage fkbm:data loop

tag @e[tag=fkbm.looped] remove fkbm.looped
