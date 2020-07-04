execute if entity @e[type=area_effect_cloud,tag=connection,scores={path=3}] run function map:gen/remove_path

execute as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id run tag @s add kill_me
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=kill_me]

execute as @e[type=area_effect_cloud,tag=normal_room] if score @s room_id = total room_id at @s run function map:gen/rotate_room
execute if score total room_id matches 0 as @e[type=area_effect_cloud,tag=normal_room] at @s run function map:gen/rotate_room

scoreboard players remove total room_id 1
scoreboard players add loops count 1
execute if score loops count matches 5.. run function map:gen/new_mansion
