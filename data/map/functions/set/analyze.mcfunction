execute as @e[type=minecraft:area_effect_cloud,tag=test_room] at @s unless block ~1 ~ ~1 birch_planks run tag @s add scan_path
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~12 ~ ~6 glass run scoreboard players add @s connection 1
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~6 ~ ~ glass run scoreboard players add @s connection 2
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~ ~ ~6 glass run scoreboard players add @s connection 4
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s if block ~6 ~ ~12 glass run scoreboard players add @s connection 8
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s connection matches 0 run tag @s remove scan_path
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] at @s run summon area_effect_cloud ~ ~ ~ {Tags:["hallway","gen"],Duration:1000000}
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s connection matches 15 run function map:set/con_X
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s count = @s connection
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s count %= 3 int
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s count matches 0 run function map:set/con_L
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s count = @s connection
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run scoreboard players operation @s count %= 5 int
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] if score @s count matches 0 run function map:set/con_I
execute as @e[type=minecraft:area_effect_cloud,tag=test_room,tag=scan_path] run function map:set/con_T
