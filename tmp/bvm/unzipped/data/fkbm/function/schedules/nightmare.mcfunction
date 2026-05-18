execute if score NightmareAutoLvlUp fkbm.options matches 1 run function fkbm:systems/nightmare/xp/auto_lvl_up
execute if score NightmareAutoLvlUp fkbm.options matches 1 as @a[scores={fkbm.death=1..}] run function fkbm:systems/nightmare/xp/death_lvl_down
execute if score NightmareAutoLvlUp fkbm.options matches 1 if score NightmareLvlDisplay fkbm.options matches 1 if predicate fkbm:generic/nightmare/display_time run function fkbm:systems/nightmare/display/actionbar
execute if score NightmareAutoLvlUp fkbm.options matches 0 if score NightmareBaseLvl fkbm.options matches 1.. if predicate fkbm:generic/nightmare/display_time run function fkbm:systems/nightmare/display/print_static
execute unless score NightmareBaseLvl fkbm.options matches 0 unless score NightmareAutoLvlUp fkbm.options matches 1 as @a run function fkbm:systems/nightmare/xp/clamp_lvl


schedule function fkbm:schedules/nightmare 60s
