scoreboard players set @s path 1
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4},distance=..7] run setblock ~ ~ ~ birch_planks
execute as @e[type=area_effect_cloud,tag=connection,scores={path=2},distance=..7] rotated as @s at @s positioned ^ ^ ^-6 run function map:gen/lock_own_paths