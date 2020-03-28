tag @s remove reconnect_me
execute as @e[type=area_effect_cloud,tag=pot_connection,distance=..7] run scoreboard players operation total turn < @s turn
execute as @e[type=area_effect_cloud,tag=pot_connection,distance=..7] if score @s turn = total turn run tag @s add reconnect_me
execute at @e[type=area_effect_cloud,tag=new_reconnect,sort=furthest,limit=1] run tag @e[type=area_effect_cloud,tag=reconnect_me,distance=1..] remove reconnect_me
tag @e[type=area_effect_cloud,tag=reconnect_me] add path
tag @e[type=area_effect_cloud,tag=pot_connection,tag=!reconnect_me,distance=..7] add wall
execute at @e[type=area_effect_cloud,tag=pot_connection,tag=wall] run setblock ~ ~ ~ birch_planks
tag @e[type=area_effect_cloud,tag=pot_connection,distance=..7] remove pot_connection
execute unless score total turn matches 0 as @e[type=area_effect_cloud,tag=reconnect_me] rotated as @s at @s positioned ^ ^ ^-6 run function map:gen/connect_back
