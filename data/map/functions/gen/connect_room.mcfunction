execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] if score @s room_id = total room_id run tag @s add connect_me
scoreboard players set @e[type=area_effect_cloud,tag=entrance,tag=connect_me] turn 0
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=entrance,tag=connect_me] run setblock ~ ~ ~ birch_planks
execute as @e[type=area_effect_cloud,tag=entrance,tag=connect_me] at @s run function map:gen/search_connection
scoreboard players remove total room_id 1
execute at @e[type=area_effect_cloud,tag=connection] run setblock ~ ~ ~ air
#execute if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect_room
