execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
scoreboard players set total turn 0
scoreboard players add retry count 1
tag @s add connect_me
say RETRY

execute if score retry count matches 1 at @e[type=area_effect_cloud,tag=connection,scores={path=4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ blue_concrete
execute if score retry count matches 1 as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id at @s rotated as @s positioned ^ ^ ^6 run function map:gen/lock_own_paths

execute if score retry count matches 2 as @e[type=area_effect_cloud,tag=connection,scores={path=2}] rotated as @s at @s positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] path 4
execute if score retry count matches 2 at @e[type=area_effect_cloud,tag=connection,scores={path=4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ birch_planks
execute if score retry count matches 2 at @e[type=area_effect_cloud,tag=connection,scores={path=3}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute if score retry count matches 2 run kill @e[type=area_effect_cloud,tag=connection,scores={path=3}]
execute if score retry count matches 2 run kill @e[type=area_effect_cloud,tag=connection,scores={path=1}]
execute if score retry count matches 2 as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id run tag @s remove path_found
execute if score retry count matches 2 as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id run tag @s add connect_me_now
execute if score retry count matches 2 run scoreboard players add reset count 1

execute if score reset count matches 0..1 run function map:gen/search_connection
execute if score reset count matches 2 run function map:gen/reset_room
