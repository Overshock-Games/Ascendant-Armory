# if addon: display
execute if score Advanced_Mobs fkbm.compat matches 1 run function fkbm:compatibility/advanced_mobs/info
execute if score Beasts_and_Monsters fkbm.compat matches 1 run function fkbm:compatibility/beasts_and_monsters/info
execute if score Better_Nether_Mobs fkbm.compat matches 1 run function fkbm:compatibility/better_nether_mobs/info
execute if score Dungeon_Now_Loading fkbm.compat matches 1 run function fkbm:compatibility/dungeon_now_loading/info
execute if score Dungeons_and_Taverns fkbm.compat matches 1 run function fkbm:compatibility/dungeons_and_taverns/info
execute if score Infinity_Cave fkbm.compat matches 1 run function fkbm:compatibility/infinity_cave/info
execute if score Mo_Variants fkbm.compat matches 1 run function fkbm:compatibility/mo_variants/info
execute if score Mob_Captains fkbm.compat matches 1 run function fkbm:compatibility/mob_captains/info
execute if score Mob_Variants fkbm.compat matches 1 run function fkbm:compatibility/mob_variants/info
execute if score RPG_Loot fkbm.compat matches 1 run function fkbm:compatibility/rpg_loot/info
execute if score Special_Mobs fkbm.compat matches 1 run function fkbm:compatibility/special_mobs/info
execute if score True_Survival fkbm.compat matches 1 run function fkbm:compatibility/true_survival/info
execute if score Upgraded_Mobs fkbm.compat matches 1 run function fkbm:compatibility/upgraded_mobs/info
execute if score Vanilla_Mob_Bosses_Variants fkbm.compat matches 1 run function fkbm:compatibility/vanilla_mob_bosses_variants/info
execute if score Wasd_Moar_Bosses fkbm.compat matches 1 run function fkbm:compatibility/wasd_moar_bosses/info
execute if score Wasd_Random_Bosses fkbm.compat matches 1 run function fkbm:compatibility/wasd_random_bosses/info

# if no addon: display not_found message
execute if score Advanced_Mobs fkbm.compat matches 1 run return 0
execute if score Beasts_and_Monsters fkbm.compat matches 1 run return 0
execute if score Better_Nether_Mobs fkbm.compat matches 1 run return 0
execute if score Dungeon_Now_Loading fkbm.compat matches 1 run return 0
execute if score Dungeons_and_Taverns fkbm.compat matches 1 run return 0
execute if score Infinity_Cave fkbm.compat matches 1 run return 0
execute if score Mo_Variants fkbm.compat matches 1 run return 0
execute if score Mob_Captains fkbm.compat matches 1 run return 0
execute if score Mob_Variants fkbm.compat matches 1 run return 0
execute if score RPG_Loot fkbm.compat matches 1 run return 0
execute if score Special_Mobs fkbm.compat matches 1 run return 0
execute if score True_Survival fkbm.compat matches 1 run return 0
execute if score Upgraded_Mobs fkbm.compat matches 1 run return 0
execute if score Vanilla_Mob_Bosses_Variants fkbm.compat matches 1 run return 0
execute if score Wasd_Moar_Bosses fkbm.compat matches 1 run return 0
execute if score Wasd_Random_Bosses fkbm.compat matches 1 run return 0

tellraw @a ["",{"storage":"fkbm:text","nbt":"project.print","interpret":true},{"text":"Additional compatible datapacks not found. Processing normal mode.","color":"white"},{"text":" "},{"text":"[get list]","bold":true,"color":"green","hover_event":{"action":"show_text","value":[{"text":"click to get the list"}]},"click_event":{"action":"run_command","command":"/function fkbm:compatibility/list"}}]
