execute as @e[type=area_effect_cloud,tag=entrance,tag=!door] if score @s room_id = total room_id at @s rotated as @s positioned ^ ^ ^6 run function map:gen/lock_own_paths
execute as @e[type=area_effect_cloud,tag=connection,scores={path=2}] rotated as @s at @s positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] path 4
execute if score total room_id matches 0 run scoreboard players set @e[type=area_effect_cloud,tag=connection] path 3
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3}] run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] run setblock ~ ~ ~ birch_planks
kill @e[type=area_effect_cloud,tag=connection,scores={path=3}]
kill @e[type=area_effect_cloud,tag=connection,scores={path=1}]

execute as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id run tag @s add kill_me
execute if score total room_id matches 0 run tag @e[type=area_effect_cloud,tag=entrance] add kill_me
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=kill_me]

execute as @e[type=area_effect_cloud,tag=normal_room] if score @s room_id = total room_id at @s run function map:gen/rotate_room
execute if score total room_id matches 0 as @e[type=area_effect_cloud,tag=normal_room] at @s run function map:gen/rotate_room

scoreboard players remove total room_id 1
scoreboard players add loops count 1
execute if score loops count matches 0..4 run scoreboard players set reset count 0
