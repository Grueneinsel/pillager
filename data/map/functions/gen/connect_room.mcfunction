scoreboard players set total turn 0
execute positioned 0 0 0 as @e[type=area_effect_cloud,tag=entrance,tag=!path_found,sort=nearest,limit=1] at @s run function map:gen/search_connection
#execute if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_created] run function map:gen/connect_room
