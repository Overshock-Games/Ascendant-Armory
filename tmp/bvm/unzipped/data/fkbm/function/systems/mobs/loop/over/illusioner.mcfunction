# cd buff
execute if entity @s[tag=fkbm.illusioner.cdbuff] run function fkbm:systems/mobs/loop/skill/illusioner/buff_cd

# heal
execute if entity @s[tag=fkbm.illusioner.heal] run function fkbm:systems/mobs/loop/skill/illusioner/heal_check

tag @s add fkbm.looped
