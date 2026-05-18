execute as @e[type=minecraft:hoglin,tag=fkbm.touched,tag=fkbm.baby,distance=..128] unless predicate fkbm:mobs/is_baby run function fkbm:systems/mobs/touch/modify {mob:"hoglin",dim:"nether"}
execute as @e[type=minecraft:piglin,tag=fkbm.touched,tag=fkbm.baby,distance=..128] unless predicate fkbm:mobs/is_baby run function fkbm:systems/mobs/touch/modify {mob:"piglin",dim:"nether"}
execute as @e[type=minecraft:wolf,tag=fkbm.touched,tag=fkbm.baby,distance=..128] unless predicate fkbm:mobs/is_baby run function fkbm:systems/mobs/touch/modify {mob:"wolf",dim:"over"}
