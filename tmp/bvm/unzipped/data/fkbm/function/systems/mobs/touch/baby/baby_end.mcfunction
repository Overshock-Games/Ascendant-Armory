execute as @e[type=minecraft:wolf,tag=fkbm.touched,tag=fkbm.baby,distance=..128] unless predicate fkbm:mobs/is_baby run function fkbm:systems/mobs/touch/modify {mob:"wolf",dim:"over"}
