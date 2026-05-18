## Dungeons and Taverns
## by Nova_Wostra
scoreboard players set Dungeons_and_Taverns fkbm.compat 0
execute if entity @p[advancements={nova_structures:adventure/find_tavern=true}] run return run scoreboard players set Dungeons_and_Taverns fkbm.compat 1
execute if entity @p[advancements={nova_structures:adventure/find_tavern=false}] run return run scoreboard players set Dungeons_and_Taverns fkbm.compat 1
execute unless function nova_structures:tick run return run scoreboard players set Dungeons_and_Taverns fkbm.compat 1
