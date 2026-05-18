# already tagged
execute if entity @s[tag=fkbm.affinity.weak] run return run function fkbm:systems/mobs/touch/affinity/buff/weak
execute if entity @s[tag=fkbm.affinity.health] run return run function fkbm:systems/mobs/touch/affinity/buff/health
execute if entity @s[tag=fkbm.affinity.resistant] run return run function fkbm:systems/mobs/touch/affinity/buff/resistant
execute if entity @s[tag=fkbm.affinity.heavy] run return run function fkbm:systems/mobs/touch/affinity/buff/heavy
execute if entity @s[tag=fkbm.affinity.strong] run return run function fkbm:systems/mobs/touch/affinity/buff/strong
execute if entity @s[tag=fkbm.affinity.fast] run return run function fkbm:systems/mobs/touch/affinity/buff/fast

# get rng buff
function fkbmtool:rng/get_with_min_max with storage fkbm:data affinity.weight

# weak
execute if score Random fktool <= Affinity.Weight.Weak fkbm.options run return run function fkbm:systems/mobs/touch/affinity/buff/weak
scoreboard players operation Random fktool -= Affinity.Weight.Weak fkbm.options

# health
execute if score Random fktool <= Affinity.Weight.Health fkbm.options run return run function fkbm:systems/mobs/touch/affinity/buff/health
scoreboard players operation Random fktool -= Affinity.Weight.Health fkbm.options

# resistant 
execute if score Random fktool <= Affinity.Weight.Resistant fkbm.options run return run function fkbm:systems/mobs/touch/affinity/buff/resistant
scoreboard players operation Random fktool -= Affinity.Weight.Resistant fkbm.options

# heavy
execute if score Random fktool <= Affinity.Weight.Heavy fkbm.options run return run function fkbm:systems/mobs/touch/affinity/buff/heavy
scoreboard players operation Random fktool -= Affinity.Weight.Heavy fkbm.options

# strong
execute if score Random fktool <= Affinity.Weight.Strong fkbm.options run return run function fkbm:systems/mobs/touch/affinity/buff/strong
scoreboard players operation Random fktool -= Affinity.Weight.Strong fkbm.options

# fast
execute if score Random fktool <= Affinity.Weight.Fast fkbm.options run return run function fkbm:systems/mobs/touch/affinity/buff/fast
scoreboard players operation Random fktool -= Affinity.Weight.Fast fkbm.options
