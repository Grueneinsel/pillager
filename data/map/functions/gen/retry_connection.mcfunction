execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
scoreboard players set total turn 0
scoreboard players add reset count 1
tag @s add connect_me
say RETRY

execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] run setblock ~ ~ ~ blue_concrete
execute as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id at @s rotated as @s positioned ^ ^ ^6 run function map:gen/lock_own_paths

execute if score reset count matches 0..1 run function map:gen/search_connection
execute if score reset count matches 2 run function map:gen/reset_room
