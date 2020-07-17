execute as @e[type=minecraft:area_effect_cloud,tag=test_room] at @s unless block ~1 ~ ~1 birch_planks run tag @s add scan_path
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~12 ~ ~6 glass run scoreboard players add @s bin_connection 1
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~6 ~ ~ glass run scoreboard players add @s bin_connection 2
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~ ~ ~6 glass run scoreboard players add @s bin_connection 4
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~6 ~ ~12 glass run scoreboard players add @s bin_connection 8
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s bin_connection matches 15 run function map:set/con_X
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s test = @s bin_connection
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s test %= 3 int
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s test matches 0 run function map:set/I_con
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s test = @s bin_connection
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s test %= 5 int
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s test matches 0 run function map:set/L_con
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s bin_connection matches 1.. run function map:set/T_con
