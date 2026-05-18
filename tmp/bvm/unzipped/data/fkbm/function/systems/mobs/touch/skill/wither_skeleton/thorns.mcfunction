# head
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.head with minecraft:golden_helmet[damage=57,enchantments={"minecraft:thorns":1},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.head with minecraft:netherite_helmet[damage=387,enchantments={"minecraft:thorns":1},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# chest
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.chest with minecraft:golden_chestplate[damage=92,enchantments={"minecraft:thorns":1},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.chest with minecraft:netherite_chestplate[damage=552,enchantments={"minecraft:thorns":1},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# legs
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.legs with minecraft:golden_leggings[damage=85,enchantments={"minecraft:thorns":1},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.legs with minecraft:netherite_leggings[damage=535,enchantments={"minecraft:thorns":1},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# feet
execute if predicate fkbmtool:rng/50 run item replace entity @s armor.feet with minecraft:golden_boots[damage=71,enchantments={"minecraft:thorns":1},trim={material:"minecraft:netherite",pattern:"minecraft:spire"}]
execute if predicate fkbmtool:rng/10 run item replace entity @s armor.feet with minecraft:netherite_boots[damage=461,enchantments={"minecraft:thorns":1},trim={material:"minecraft:gold",pattern:"minecraft:spire"}]

# loot chance if netherite
execute if predicate fkbm:mobs/equipment/head_netherite run data modify entity @s drop_chances.head set value 0.03f
execute if predicate fkbm:mobs/equipment/chest_netherite run data modify entity @s drop_chances.chest set value 0.03f
execute if predicate fkbm:mobs/equipment/legs_netherite run data modify entity @s drop_chances.legs set value 0.03f
execute if predicate fkbm:mobs/equipment/feet_netherite run data modify entity @s drop_chances.feet set value 0.03f
