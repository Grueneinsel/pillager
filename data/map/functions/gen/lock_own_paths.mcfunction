scoreboard players set @s[tag=!entrance] path 1
tag @s remove locker
execute positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=4},distance=..7] path 3
execute positioned ^ ^ ^6 at @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] run setblock ~ ~ ~ birch_planks
execute positioned ^ ^ ^6 run tag @e[type=area_effect_cloud,tag=door,tag=path_found,distance=..7] add connected_to_current_room
execute positioned ^ ^ ^6 run tag @e[type=area_effect_cloud,tag=connection,scores={path=2},distance=..7] add locker
execute positioned ^ ^ ^-6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=4},distance=..7] path 3
execute positioned ^ ^ ^-6 at @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] run setblock ~ ~ ~ birch_planks
execute positioned ^ ^ ^-6 run tag @e[type=area_effect_cloud,tag=door,tag=path_found,distance=..7] add connected_to_current_room
execute positioned ^ ^ ^-6 run tag @e[type=area_effect_cloud,tag=connection,scores={path=2},distance=..7] add locker

execute as @e[type=area_effect_cloud,tag=connection,tag=locker] rotated as @s at @s run function map:gen/lock_own_paths
