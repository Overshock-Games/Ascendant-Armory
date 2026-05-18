# canceler
execute unless predicate fkbm:generic/empty_offhand run return run tag @s remove fkbm.vex.dualsword

# give sword
attribute @s minecraft:attack_damage modifier add fkbm.vex.dualsword 0.2 add_multiplied_base
item replace entity @s weapon.offhand with minecraft:iron_sword[damage=230,custom_name={"italic":false,"text":"Iron Dagger"},item_name={"italic":false,"text":"Iron Dagger"}] 
