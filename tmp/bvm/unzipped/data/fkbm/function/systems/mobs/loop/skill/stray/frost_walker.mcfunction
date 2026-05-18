# walking water
execute if block ~ ~-1 ~ minecraft:water if block ~ ~ ~ #minecraft:air align y run return run function fkbm:systems/mobs/loop/skill/stray/frost_walker_freeze
execute if block ~1 ~-1 ~ minecraft:water if block ~ ~ ~ #minecraft:air align y run return run function fkbm:systems/mobs/loop/skill/stray/frost_walker_freeze
execute if block ~-1 ~-1 ~ minecraft:water if block ~ ~ ~ #minecraft:air align y run return run function fkbm:systems/mobs/loop/skill/stray/frost_walker_freeze
execute if block ~ ~-1 ~1 minecraft:water if block ~ ~ ~ #minecraft:air align y run return run function fkbm:systems/mobs/loop/skill/stray/frost_walker_freeze
execute if block ~ ~-1 ~-1 minecraft:water if block ~ ~ ~ #minecraft:air align y run return run function fkbm:systems/mobs/loop/skill/stray/frost_walker_freeze

# in water feet
execute if block ~ ~ ~ minecraft:water if block ~ ~1 ~ #minecraft:air positioned ~ ~1 ~ align y run return run function fkbm:systems/mobs/loop/skill/stray/frost_walker_freeze
