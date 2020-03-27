say found room
execute as @e[type=area_effect_cloud,tag=connect_me] at @s if block ~ ~ ~ blue_concrete run tag @s add path_found
tag @e[type=area_effect_cloud,tag=entrance,sort=nearest,limit=1] add path_found
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
tag @s add pot_connection
execute as @e[type=area_effect_cloud,tag=reconnect_me] at @s positioned ^ ^ ^-6 run function map:gen/connect_back
kill @e[type=area_effect_cloud,tag=pot_connection]
tag @s remove connect_me_next
tag @s remove reconnect_me
