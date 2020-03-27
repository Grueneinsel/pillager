execute as @e[type=area_effect_cloud,tag=connect_me_next,limit=1,sort=nearest] at @s run function map:gen/search_connection
execute as @e[type=area_effect_cloud,tag=connect_me_next,limit=1,sort=nearest] run tag @s remove connect_me_next
#execute if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
