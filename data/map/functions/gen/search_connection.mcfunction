execute as @e[type=area_effect_cloud,tag=connect_me,sort=nearest] if score @s turn = total turn at @s run function map:gen/connect_me
scoreboard players add total turn 1
execute at @e[type=area_effect_cloud,tag=latest_connection] if block ~ ~ ~ blue_concrete run tag @s add path_found
execute at @e[type=area_effect_cloud,tag=latest_connection] run setblock ~ ~ ~ birch_planks
scoreboard players add @e[type=area_effect_cloud,tag=latest_connection] turn 1
tag @e[type=area_effect_cloud,tag=latest_connection] remove latest_connection
scoreboard players add @e[type=area_effect_cloud,tag=turn_me] turn 1
scoreboard players add @e[type=area_effect_cloud,tag=turn_me,tag=turn_right] rotation 1
scoreboard players remove @e[type=area_effect_cloud,tag=turn_me,tag=turn_left] rotation 1
scoreboard players set @e[type=area_effect_cloud,tag=turn_me,tag=turn_left,scores={rotation=-1}] rotation 3
scoreboard players set @e[type=area_effect_cloud,tag=turn_me,tag=turn_right,scores={rotation=4}] rotation 0
tag @e[type=area_effect_cloud,tag=turn_me] remove turn_me
execute if entity @s[tag=path_found] run function map:gen/found_connection
execute unless entity @s[tag=path_found] if entity @e[tag=connect_me] run function map:gen/search_connection
execute unless entity @s[tag=path_found] unless entity @e[tag=connect_me] run say fuck iwas funktioniert nicht
