# aggro
data merge entity @s {anger_end_time:600}
data modify entity @s angry_at set from entity @p[gamemode=!creative,gamemode=!spectator,distance=..128] UUID

# fx
function fkbmtool:rng/get
execute if score Random fktool matches 30..40 run playsound minecraft:entity.wolf_angry.growl hostile @a[distance=..128] ~ ~ ~ 1 .8 .2
execute if score Random fktool matches 41..50 run playsound minecraft:entity.wolf_angry.ambient hostile @a[distance=..128] ~ ~ ~ 1 .7 .2
execute if score Random fktool matches 51..60 run playsound minecraft:entity.wolf_angry.ambient hostile @a[distance=..128] ~ ~ ~ 1 .6 .2
execute if score Random fktool matches 61..70 run playsound minecraft:entity.wolf_angry.whine hostile @a[distance=..128] ~ ~ ~ 1 .8 .2
