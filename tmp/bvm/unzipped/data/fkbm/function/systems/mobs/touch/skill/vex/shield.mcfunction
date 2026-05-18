# canceler
execute unless predicate fkbm:generic/empty_offhand run return run tag @s remove fkbm.vex.shield

# give shield
attribute @s minecraft:armor modifier add fkbm.shield.armor 10 add_value
item replace entity @s weapon.offhand with minecraft:shield[damage=316,custom_name={"italic":false,"text":"Buckler"},item_name={"italic":false,"text":"Buckler"}]
