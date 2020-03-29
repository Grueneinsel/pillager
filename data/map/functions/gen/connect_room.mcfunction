execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] if score @s room_id = total room_id run tag @s add connect_me_next
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation @s count = @s x
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation @s count += @s z
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s run scoreboard players operation @s count -= @e[type=area_effect_cloud,tag=entrance,tag=!path_found,tag=!tag=connect_me_next,distance=1..,sort=nearest,limit=1] x
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s run scoreboard players operation @s count -= @e[type=area_effect_cloud,tag=entrance,tag=!path_found,tag=!tag=connect_me_next,distance=1..,sort=nearest,limit=1] z
execute as @e[type=area_effect_cloud,tag=connect_me_next] if score @s count matches ..0 run scoreboard players operation @s count *= -1 int
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=connect_me_next] run setblock ~ ~ ~ birch_planks
execute if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
#scoreboard players add total room_id 1
#execute if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect_room
