execute as @e[type=minecraft:area_effect_cloud,tag=test_room] at @s unless block ~1 ~ ~1 birch_planks run tag @s add scan_path
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~12 ~ ~6 glass run scoreboard players add @s bin_connection 1
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s bin_connection matches 1.. run scoreboard players add @s connection 1
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~6 ~ ~ glass run scoreboard players add @s bin_connection 2
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s bin_connection matches 2.. run scoreboard players add @s connection 1
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~ ~ ~6 glass run scoreboard players add @s bin_connection 4
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s bin_connection matches 4.. run scoreboard players add @s connection 1
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~6 ~ ~12 glass run scoreboard players add @s bin_connection 8
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s bin_connection matches 8.. run scoreboard players add @s connection 1
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run if score @s connection matches 2 run function map:set/con/2
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run if score @s connection matches 3 run function map:set/con/T
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run if score @s connection matches 4 run function map:set/con/X
