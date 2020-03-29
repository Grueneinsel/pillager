scoreboard players set z count 0
scoreboard players set x count 0
scoreboard players set total room_id 0
scoreboard players operation start_seed random = seed random
function map:gen/test_room
kill @e[type=area_effect_cloud,tag=test_room,scores={x=2..4,z=0..1}]

summon area_effect_cloud 60 5 6 {Tags:["entrance","gen"],Duration:1000000}
execute positioned 60 5 6 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 3
summon area_effect_cloud 42 5 24 {Tags:["entrance","gen"],Duration:1000000}
execute positioned 42 5 24 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 0
summon area_effect_cloud 24 5 6 {Tags:["entrance","gen"],Duration:1000000}
execute positioned 24 5 6 run scoreboard players set @e[type=area_effect_cloud,tag=entrance,limit=1,sort=nearest] rotation 1
scoreboard players set @e[type=area_effect_cloud,tag=entrance] room_id 0

summon area_effect_cloud 0 5 0 {Tags:["2x2","current_room","normal_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
#summon area_effect_cloud 0 5 0 {Tags:["2tiles","1x2","current_room","normal_room","gen"],Duration:1000000}
#execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
#summon area_effect_cloud 0 5 0 {Tags:["2tiles","2x1","current_room","normal_room","gen"],Duration:1000000}
#execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
#function map:gen/check_room
execute as @e[type=area_effect_cloud,tag=entrance] store result score @s x run data get entity @s Pos[0]
execute as @e[type=area_effect_cloud,tag=entrance] store result score @s z run data get entity @s Pos[2]
scoreboard players set total turn 0
scoreboard players set total room_id 0
function map:gen/connect_room
#tellraw @p [{"score":{"name":"random","objective":"random"}}]
