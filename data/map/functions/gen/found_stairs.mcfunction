execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] at @s rotated as @s positioned ^ ^ ^7 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] path 2
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] path 1
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=stair_entrance,limit=1] room_id = total room_id
setblock ~ ~ ~ blue_concrete
