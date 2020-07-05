function map:gen/reset_mansion
title @a actionbar ["",{"score":{"name":"seed","objective":"random"},"color":"gold"}]
scoreboard players set z count 0
scoreboard players set x count 0
scoreboard players set total room_id 0
scoreboard players set total_reset count 0
scoreboard players operation start_seed random = seed random
function map:gen/test_room
kill @e[type=area_effect_cloud,tag=test_room,scores={x=2..4,z=0..1}]

summon area_effect_cloud 60 5 6 {Tags:["entrance","gen"],Duration:1000000}
execute positioned 60 5 6 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 3
summon area_effect_cloud 42 5 24 {Tags:["entrance","gen","middle_path"],Duration:1000000}
execute positioned 42 5 24 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 0
summon area_effect_cloud 24 5 6 {Tags:["entrance","gen"],Duration:1000000}
execute positioned 24 5 6 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 1
summon area_effect_cloud 60 14 18 {Tags:["entrance","gen"],Duration:1000000}
execute positioned 60 14 18 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 3
summon area_effect_cloud 24 14 18 {Tags:["entrance","gen"],Duration:1000000}
execute positioned 24 14 18 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 1
execute as @e[type=area_effect_cloud,tag=entrance] store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
scoreboard players set @e[type=area_effect_cloud,tag=entrance] room_id 0
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~ ~ birch_planks

summon area_effect_cloud 0 5 0 {Tags:["2x2","current_room","normal_room","gen"],Duration:1000000}
data modify storage room1 types set value [0,1,2,3,4,5]
scoreboard players set @e[type=area_effect_cloud,tag=current_room] types 6
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["2tiles","1x2","current_room","normal_room","gen"],Duration:1000000}
data modify storage room2 types set value [0,1,2,3,4]
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["2tiles","2x1","current_room","normal_room","gen"],Duration:1000000}
data modify storage room3 types set value [0,1,2,3,4]
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room


execute as @e[tag=test_room] at @s run tp @s ~ ~9 ~
summon area_effect_cloud 0 5 0 {Tags:["2tiles","1x2","current_room","normal_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["2tiles","2x1","current_room","normal_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["stairs","current_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
execute as @e[type=area_effect_cloud,tag=stairs] at @s run function map:gen/stairs
setblock 30 14 24 birch_planks
setblock 54 14 24 birch_planks
setblock 42 14 24 birch_planks

execute as @e[type=area_effect_cloud,tag=entrance] store result score @s x run data get entity @s Pos[0]
execute as @e[type=area_effect_cloud,tag=entrance] store result score @s z run data get entity @s Pos[2]
execute as @e[type=area_effect_cloud,tag=entrance] run scoreboard players operation @s taxi_distance = @s x
execute as @e[type=area_effect_cloud,tag=entrance] run scoreboard players operation @s taxi_distance += @s z
execute as @e[type=area_effect_cloud,tag=entrance] store result score @s y run data get entity @s Pos[1]
tag @e[type=area_effect_cloud,tag=entrance,scores={y=5}] add door
scoreboard players set current y 5
scoreboard players set @e[type=area_effect_cloud,tag=entrance,tag=middle_path] count 200
scoreboard players set total room_id -1
function map:gen/connect_room

execute unless entity @p[tag=debug] run function map:gen/finished
