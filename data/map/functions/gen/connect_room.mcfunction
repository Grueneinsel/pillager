execute if entity @p[tag=debugmsg] run say connect room

##Set previous connections to finished connections
scoreboard players set reset count 0
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=1}] path 2
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3}] path 4
execute at @e[type=area_effect_cloud,tag=door] run setblock ~ ~ ~ blue_concrete
tag @e[type=area_effect_cloud,tag=door,tag=connected_to_current_room] remove connected_to_current_room

##Determine taxi distance to nearest door with room of the lowest id
scoreboard players set total room_id 10
execute as @e[type=area_effect_cloud,tag=door,tag=!path_found] if score @s room_id < total room_id run scoreboard players operation total room_id < @s room_id
execute as @e[type=area_effect_cloud,tag=door,tag=!path_found] if score @s room_id = total room_id run tag @s add connect_me_next
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=!middle_path] run scoreboard players operation @s count = @s taxi_distance
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=!middle_path] at @s run scoreboard players operation @s count -= @e[type=area_effect_cloud,tag=door,tag=!path_found,tag=!connect_me_next,sort=nearest,limit=1] taxi_distance
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=!middle_path] if score @s count matches ..-1 run scoreboard players operation @s count *= -1 int

##Set doors and prevent rooms to connect to themselves
execute at @e[type=area_effect_cloud,tag=door,tag=!path_found] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=stair_entrance,scores={path=0}] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=connect_me_next] run setblock ~ ~ ~ birch_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door

##If there is no door add the second layer then the stairs
execute unless entity @e[type=area_effect_cloud,tag=door,tag=!path_found] run scoreboard players set current y 14
execute unless entity @e[type=area_effect_cloud,tag=door,tag=!path_found] run tag @e[type=area_effect_cloud,tag=entrance,scores={y=14}] add door
execute unless entity @e[type=area_effect_cloud,tag=door,tag=!path_found] if entity @e[type=area_effect_cloud,tag=stair_entrance,scores={path=0}] run function map:gen/connect_stairs

##Loop through rooms
execute if score reset count matches 3 run function map:gen/reset_room
execute unless entity @p[tag=debug] if score reset count matches 0..2 if entity @e[type=area_effect_cloud,tag=door,tag=!path_found] run function map:gen/connect_room
