execute at @e[tag=connect_me] if block ~ ~ ~ blue_concrete run tag @e[type=area_effect_cloud,tag=entrance,sort=nearest,limit=1] add reconnect_me
tag @e[type=area_effect_cloud,tag=reconnect_me] remove pot_connection
execute as @e[type=area_effect_cloud,tag=reconnect_me] at @s positioned ^ ^ ^-6 run function map:gen/reconnect_back
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
