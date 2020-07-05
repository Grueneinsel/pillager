##Spread out AECs
execute as @e[type=area_effect_cloud,tag=connect_me,sort=nearest] if score @s turn = total turn at @s run function map:gen/connect_me
scoreboard players add total turn 1

##Rotate latest AECs
execute as @e[type=area_effect_cloud,tag=latest_connection] at @s run function map:gen/rotate_aec

execute if entity @e[type=area_effect_cloud,tag=blue_block] run function map:gen/found_connection
execute if score reset count matches 0..2 unless entity @s[tag=path_found] unless entity @e[type=area_effect_cloud,tag=connect_me] run function map:gen/retry_connection
execute if score reset count matches 0..2 unless entity @s[tag=path_found] if entity @e[type=area_effect_cloud,tag=connect_me] unless entity @p[tag=debug_me] run function map:gen/search_connection
