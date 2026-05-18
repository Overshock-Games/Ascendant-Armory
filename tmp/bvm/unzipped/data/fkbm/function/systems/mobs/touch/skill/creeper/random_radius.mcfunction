function fkbmtool:rng/get
execute if score Random fktool matches 00..010 run data merge entity @s {ExplosionRadius:2b}
execute if score Random fktool matches 11..070 run data merge entity @s {ExplosionRadius:3b}
execute if score Random fktool matches 71..090 run data merge entity @s {ExplosionRadius:4b}
execute if score Random fktool matches 90..100 run data merge entity @s {ExplosionRadius:5b}
