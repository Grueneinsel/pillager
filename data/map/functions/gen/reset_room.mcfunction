#execute if entity @p[tag=debugmsg] run say Reset Room
say Reset Room
execute if entity @e[type=area_effect_cloud,tag=connection,scores={path=3}] run function map:gen/remove_path

execute if score total room_id matches 0 run scoreboard players operation total room_id = @e[type=area_effect_cloud,tag=normal_room,limit=1,sort=nearest] room_id

execute as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id run tag @s add kill_me
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=kill_me] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=kill_me]

execute as @e[type=area_effect_cloud,tag=normal_room] if score @s room_id = total room_id at @s run function map:gen/rotate_room

execute as @e[type=area_effect_cloud,tag=entrance] if score @s turn = total turn run tag @s add door
scoreboard players add total_reset count 1
execute if score total_reset count matches 5.. run function map:gen/new_mansion
