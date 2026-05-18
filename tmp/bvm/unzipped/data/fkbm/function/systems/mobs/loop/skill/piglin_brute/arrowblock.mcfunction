# block arrow
data merge entity @s {Tags:["fkbm.piglin_brute.blocked"],Motion:[0d,0d,0d],damage:0d}

# fx
particle minecraft:wax_off ~ ~ ~ .1 .1 .1 0 3
playsound minecraft:block.wood.place hostile @a[distance=..32] ~ ~ ~ 2 2
playsound minecraft:entity.iron_golem.repair hostile @a[distance=..32] ~ ~ ~ .2 2

# return for cd
return 1
