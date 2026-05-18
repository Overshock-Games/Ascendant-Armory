execute if entity @s[tag=fkbm.hoglin.hotblood] run data merge entity @s {IsImmuneToZombification:1b}
execute if entity @s[tag=fkbm.hoglin.regen] run effect give @s minecraft:regeneration infinite 1 false
scoreboard players set @s[tag=fkbm.hoglin.stomp] fkbm.cd1 0

# reduce heavy/alpha knockback
execute unless entity @s[tag=fkbm.affinity.heavy] run return 0
execute if score #IndividualDiff fkbm.options matches 1 if entity @s[tag=fkbm.affinity.heavy] run return run attribute @s minecraft:attack_knockback modifier add fkbm.knockback.nerf -0.2 add_value
execute if score #IndividualDiff fkbm.options matches 2 if entity @s[tag=fkbm.affinity.heavy] run return run attribute @s minecraft:attack_knockback modifier add fkbm.knockback.nerf -0.4 add_value
execute if score #IndividualDiff fkbm.options matches 3 if entity @s[tag=fkbm.affinity.heavy] run return run attribute @s minecraft:attack_knockback modifier add fkbm.knockback.nerf -0.5 add_value
