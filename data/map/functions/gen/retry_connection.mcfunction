execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
scoreboard players set total turn 0
scoreboard players add reset count 0
tag @s add connect_me
say RETRY
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] run setblock ~ ~ ~ air
execute if score reset count matches 0..1 run function map:gen/search_connection
execute if score reset count matches 2 run function map:gen/reset_room
