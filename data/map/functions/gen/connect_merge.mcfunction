scoreboard players set @s path 1
execute positioned ^ ^ ^-6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,distance=..7,scores={path=4}] path 3
execute positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,distance=..7,scores={path=4}] path 3
execute positioned ^ ^ ^-6 run tag @e[type=area_effect_cloud,tag=door,tag=path_found,distance=..7] add connected_to_current_room
execute positioned ^ ^ ^6 run tag @e[type=area_effect_cloud,tag=door,tag=path_found,distance=..7] add connected_to_current_room
execute positioned ^ ^ ^-6 as @e[type=area_effect_cloud,tag=connection,distance=..7,scores={path=2}] at @s rotated as @s run function map:gen/connect_merge
execute positioned ^ ^ ^6 as @e[type=area_effect_cloud,tag=connection,distance=..7,scores={path=2}] at @s rotated as @s run function map:gen/connect_merge
