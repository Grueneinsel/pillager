##Set windows
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={z=6}] windows 1
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={x=0}] windows 2
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={z=0}] windows 3
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={x=6}] windows 4
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={x=0,z=6}] windows 5
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={x=0,z=0}] windows 6
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={x=6,z=0}] windows 7
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room,scores={x=6,z=6}] windows 8

##Analyze OG
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room] connection 0
function map:set/analyze

##Analyze EG
execute as @e[type=minecraft:area_effect_cloud,tag=test_room] at @s run tp @s ~ ~-9 ~
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=test_room] connection 0
function map:set/analyze

kill @e[type=minecraft:area_effect_cloud,tag=test_room]
