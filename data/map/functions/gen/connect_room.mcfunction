say connect room
execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] if score @s room_id = total room_id run tag @s add connect_me_next
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation @s count = @s x
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation @s count += @s z
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s run scoreboard players operation @s count -= @e[type=area_effect_cloud,tag=entrance,tag=!path_found,tag=!connect_me_next,sort=nearest,limit=1] x
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s run scoreboard players operation @s count -= @e[type=area_effect_cloud,tag=entrance,tag=!path_found,tag=!connect_me_next,sort=nearest,limit=1] z
execute as @e[type=area_effect_cloud,tag=connect_me_next] if score @s count matches ..-1 run scoreboard players operation @s count *= -1 int
scoreboard players set @e[type=area_effect_cloud,tag=connect_me_next,tag=middle_path] count 180
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=connect_me_next] run setblock ~ ~ ~ birch_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] if score @s room_id = total room_id store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=1}] path 2
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3}] path 4
scoreboard players add total room_id 1
execute if score reset count matches 0 if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect_room
