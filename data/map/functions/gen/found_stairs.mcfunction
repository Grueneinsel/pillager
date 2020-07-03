execute rotated as @s positioned ^ ^ ^7 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] path 2
scoreboard players set @s path 1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=stair_entrance,limit=1] room_id = total room_id
