##Spread out AECs
execute as @e[type=area_effect_cloud,tag=connect_me] if score @s turn = total turn if block ~ ~ ~ blue_concrete run tag @s add blue_block
execute unless entity @e[type=area_effect_cloud,tag=blue_block] as @e[type=area_effect_cloud,tag=connect_me,sort=nearest] if score @s turn = total turn at @s run function map:gen/connect_me
scoreboard players add total turn 1

##Rotate latest AECs
execute as @e[type=area_effect_cloud,tag=latest_connection] at @s run function map:gen/rotate_aec

execute if entity @e[type=area_effect_cloud,tag=blue_block] run function map:gen/stair_success
execute unless entity @e[type=area_effect_cloud,tag=reconnect_me] if entity @e[type=area_effect_cloud,tag=connect_me] run function map:gen/stair_search
