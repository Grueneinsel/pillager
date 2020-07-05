##Keep walls from other paths
execute as @e[type=area_effect_cloud,tag=connection,scores={path=2}] rotated as @s at @s positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] path 4
execute as @e[type=area_effect_cloud,tag=door,tag=path_found,tag=!connected_to_current_room] unless score @s room_id = total room_id rotated as @s at @s positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] path 4
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ birch_planks

##Remove old path
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=connection,scores={path=3}]
kill @e[type=area_effect_cloud,tag=connection,scores={path=1}]
execute as @e[type=area_effect_cloud,tag=stair_entrance,scores={path=1}] if score @s room_id = total room_id at @s rotated as @s positioned ^ ^ ^7 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] path 0
execute as @e[type=area_effect_cloud,tag=stair_entrance,scores={path=1}] if score @s room_id = total room_id run scoreboard players reset @s room_id

##Reset other door
execute as @e[type=area_effect_cloud,tag=door] if score @s room_id = total room_id run tag @s add connect_me_next
tag @e[type=area_effect_cloud,tag=connect_me_next] remove path_found
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=!connect_me] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=!connect_me] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=!connect_me] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks

##Reset all doors that were connected
tag @e[type=area_effect_cloud,tag=door,tag=connected_to_current_room] remove path_found
execute at @e[type=area_effect_cloud,tag=door,tag=!path_found] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=stair_entrance,scores={path=0}] run setblock ~ ~ ~ blue_concrete
