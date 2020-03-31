say connect
scoreboard players set total room_id -1
execute if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect_room
execute as @e[type=area_effect_cloud,tag=entrance] at @s rotated as @s positioned ^ ^ ^6 unless entity @e[type=area_effect_cloud,tag=connection,scores={path=2},distance=..7] run tag @s remove path_found
execute if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect
