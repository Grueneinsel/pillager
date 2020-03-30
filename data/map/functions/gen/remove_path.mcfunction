say remove path
execute as @e[type=area_effect_cloud,tag=connection,scores={path=2}] rotated as @s at @s positioned ^ ^ ^6 run scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3},distance=..7] path 4
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=entrance] if score @s room_id = total room_id run tag @s add connect_me_next
tag @e[type=area_effect_cloud,tag=connect_me_next] remove path_found
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ air run setblock ~ ~ ~ oak_planks
execute at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ birch_planks
kill @e[type=area_effect_cloud,tag=connection,scores={path=3}]
kill @e[type=area_effect_cloud,tag=connection,scores={path=1}]
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=1}] path 2
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3}] path 4
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=connect_me_next] run setblock ~ ~ ~ birch_planks
