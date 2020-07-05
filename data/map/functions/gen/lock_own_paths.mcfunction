scoreboard players set @s[tag=!entrance] path 1
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=4},distance=..7] path 3
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] run setblock ~ ~ ~ birch_planks
tag @e[type=area_effect_cloud,tag=door,tag=path_found,distance=..7] add connected_to_current_room
execute as @e[type=area_effect_cloud,tag=connection,scores={path=2},distance=..7] rotated as @s at @s positioned ^ ^ ^-6 run function map:gen/lock_own_paths
execute as @e[type=area_effect_cloud,tag=connection,scores={path=2},distance=..7] rotated as @s at @s positioned ^ ^ ^6 run function map:gen/lock_own_paths
