execute if entity @p[tag=debug] run say REROTATE ROOM
execute as @e[type=area_effect_cloud,tag=connection,scores={path=2}] rotated as @s at @s positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] path 4
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id run tag @s add connect_me_next
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] run setblock ~ ~ ~ birch_planks
kill @e[type=area_effect_cloud,tag=connection,scores={path=3}]
kill @e[type=area_effect_cloud,tag=connection,scores={path=1}]
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=connect_me_next]

execute as @e[type=area_effect_cloud,tag=normal_room] if score @s room_id = total room_id at @s run function map:gen/rotate_room

scoreboard players remove total room_id 1
scoreboard players add rotates count 1
execute if score rotates count matches 0..3 run scoreboard players set reset count 0
