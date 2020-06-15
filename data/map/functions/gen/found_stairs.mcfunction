execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] at @s rotated as @s positioned ^ ^ ^7 at @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] run setblock ~ ~ ~ birch_planks
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] at @s rotated as @s positioned ^ ^ ^7 run setblock ~ ~ ~ stone
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] room_id = total room_id
setblock ~ ~ ~ blue_concrete
