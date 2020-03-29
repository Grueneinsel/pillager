execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] if score @s room_id = total room_id run tag @s add connect_me_next
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation @s count = @s x
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation @s count += @s z
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s run scoreboard players operation @s count -= @e[type=area_effect_cloud,tag=entrance,tag=!path_found,tag=!connect_me_next,sort=nearest,limit=1] x
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s run scoreboard players operation @s count -= @e[type=area_effect_cloud,tag=entrance,tag=!path_found,tag=!connect_me_next,sort=nearest,limit=1] z
execute as @e[type=area_effect_cloud,tag=connect_me_next] if score @s count matches ..-1 run scoreboard players operation @s count *= -1 int
scoreboard players set @e[type=area_effect_cloud,tag=connect_me_next,tag=middle] count 180
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=connect_me_next] run setblock ~ ~ ~ birch_planks
execute if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=1}] path 2
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3}] path 4
scoreboard players add total room_id 1
say connect room
execute if score reset count matches 0..1 if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect_room
