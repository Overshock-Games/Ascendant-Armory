data modify entity @s last_hurt_by_player set from entity @p[tag=fkbm.spider.mommy.attacker] UUID
data modify entity @s last_hurt_by_player_memory_time set value 200
data modify entity @s last_hurt_by_mob set from entity @s last_hurt_by_player
data modify entity @s ticks_since_last_hurt_by_mob set value 200