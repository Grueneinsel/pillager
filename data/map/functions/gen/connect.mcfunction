scoreboard players add loops count 1
scoreboard players set total room_id -1
execute if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect_room
execute unless entity @p[tag=debug] as @e[type=area_effect_cloud,tag=entrance] at @s rotated as @s positioned ^ ^ ^6 unless entity @e[type=area_effect_cloud,tag=connection,scores={path=1..2},distance=..7] run tag @s remove path_found
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] run setblock ~ ~ ~ birch_planks
execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ blue_concrete run tag @s add path_found
execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ blue_concrete run tag @s add path_found
execute as @e[type=area_effect_cloud,tag=entrance,tag=!path_found] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ blue_concrete run tag @s add path_found
execute unless entity @p[tag=debug] if score reset count matches 0..2 if score loops count matches 0..3 if entity @e[type=area_effect_cloud,tag=entrance,tag=!path_found] run function map:gen/connect
execute if score loops count matches 4.. run function map:gen/reset_room
