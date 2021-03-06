##Reset path
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
scoreboard players set total turn 0
scoreboard players add retry count 1
tag @s add connect_me

execute if entity @p[tag=debugmsg] if score retry count matches 1 run say Retry 1 (allow connection to other paths)
execute if score retry count matches 1 at @e[type=area_effect_cloud,tag=connection,scores={path=4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ blue_concrete
execute if score retry count matches 1 as @e[type=area_effect_cloud,tag=door,tag=!connect_me] if score @s room_id = total room_id if score @s y = current y at @s rotated as @s run function map:gen/lock_own_paths

execute if entity @p[tag=debugmsg] if score retry count matches 2 run say Retry 2 (remove other path from this room)
execute if score retry count matches 2 run scoreboard players add reset count 1
execute if score retry count matches 2 if score reset count matches 0..2 run function map:gen/remove_path

execute if entity @p[tag=debugmsg] if score retry count matches 3 run say Retry 3 (again with connection to other paths)
execute if score retry count matches 3 at @e[type=area_effect_cloud,tag=connection,scores={path=4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ blue_concrete
execute if score retry count matches 3 at @e[type=area_effect_cloud,tag=stair_entrance,scores={path=0}] run setblock ~ ~ ~ blue_concrete

execute if entity @p[tag=debugmsg] if score retry count matches 4 run say Retry 4 (This layout is impossible)
execute if score retry count matches 4 run scoreboard players set reset count 3

tag @p[tag=debug] add debug_me
