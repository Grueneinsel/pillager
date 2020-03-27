execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] if score @s room_id = total room_id run tag @s add connect_me_next
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=connect_me_next] run setblock ~ ~ ~ birch_planks
execute if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
#scoreboard players remove total room_id 1
#execute at @e[type=area_effect_cloud,tag=connection] run setblock ~ ~ ~ air
#execute if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect_room
