##Spread out AECs
execute as @e[type=area_effect_cloud,tag=connect_me,sort=nearest] if score @s turn = total turn at @s run function map:gen/connect_me
scoreboard players add total turn 1

##Rotate latest AECs
execute at @e[type=area_effect_cloud,tag=latest_connection] if block ~ ~ ~ purple_concrete run function map:gen/found_stairs
execute at @e[type=area_effect_cloud,tag=latest_connection] if block ~ ~ ~ blue_concrete run tag @s add path_found
execute at @e[type=area_effect_cloud,tag=latest_connection] unless block ~ ~ ~ blue_concrete run setblock ~ ~ ~ birch_planks
scoreboard players add @e[type=area_effect_cloud,tag=latest_connection,tag=!straight] turn 2
scoreboard players add @e[type=area_effect_cloud,tag=latest_connection,tag=straight] turn 1
scoreboard players add @e[type=area_effect_cloud,tag=latest_connection,tag=turn_right] rotation 1
scoreboard players remove @e[type=area_effect_cloud,tag=latest_connection,tag=turn_left] rotation 1
scoreboard players set @e[type=area_effect_cloud,tag=latest_connection,tag=turn_left,scores={rotation=-1}] rotation 3
scoreboard players set @e[type=area_effect_cloud,tag=latest_connection,tag=turn_right,scores={rotation=4}] rotation 0
tag @e[type=area_effect_cloud,tag=latest_connection] remove latest_connection

execute if entity @s[tag=path_found] run function map:gen/found_connection
execute if score reset count matches 0..2 unless entity @s[tag=path_found] unless entity @e[type=area_effect_cloud,tag=connect_me] run function map:gen/retry_connection
execute if score reset count matches 0..2 unless entity @s[tag=path_found] if entity @e[type=area_effect_cloud,tag=connect_me] run function map:gen/search_connection
