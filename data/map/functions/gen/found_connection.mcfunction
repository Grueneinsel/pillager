execute at @e[tag=connect_me] if block ~ ~ ~ blue_concrete run tag @e[type=area_effect_cloud,tag=entrance,sort=nearest,limit=1] add reconnect_me
execute as @e[tag=connect_me] at @s if block ~ ~ ~ blue_concrete run kill @s
tag @e[type=area_effect_cloud,tag=entrance,tag=reconnect_me] add path_found
execute as @e[type=area_effect_cloud,tag=reconnect_me] at @s positioned ^ ^ ^-6 run function map:gen/reconnect_back
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
tag @s remove connect_me_next
