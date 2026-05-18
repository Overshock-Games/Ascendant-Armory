## Vanilla Mob Bosses Variants
## by jensencheah
scoreboard players set Vanilla_Mob_Bosses_Variants fkbm.compat 0
execute unless score #tmp Position matches 0.. run return run scoreboard players set Vanilla_Mob_Bosses_Variants fkbm.compat 1
execute store success score Vanilla_Mob_Bosses_Variants fkbm.compat run return run scoreboard players set #tmp slimehealth 1
execute store success score Vanilla_Mob_Bosses_Variants fkbm.compat run return run scoreboard players set #tmp magma_cubehealth 1
