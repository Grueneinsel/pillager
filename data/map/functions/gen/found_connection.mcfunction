execute if entity @p[tag=debugmsg] run say found connection

##AEC is happy that he found a connection
tag @s add path_found
tag @e[type=area_effect_cloud,tag=blue_block] add reconnect_me
execute at @e[type=area_effect_cloud,tag=reconnect_me,sort=furthest,limit=1] run tag @e[type=area_effect_cloud,tag=reconnect_me,distance=1..] remove reconnect_me
execute as @e[type=area_effect_cloud,tag=reconnect_me] store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute at @e[type=area_effect_cloud,tag=reconnect_me] as @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] at @s run function map:gen/found_stairs
execute at @e[type=area_effect_cloud,tag=reconnect_me] run tag @e[type=area_effect_cloud,tag=door,distance=..1] add path_found
execute at @e[type=area_effect_cloud,tag=reconnect_me] run tag @e[type=area_effect_cloud,tag=door,distance=..1] add connected_to_current_room
execute as @e[type=area_effect_cloud,tag=reconnect_me] at @s if entity @e[type=area_effect_cloud,tag=connection,distance=..1,scores={path=4}] rotated as @s run function map:gen/connect_merge
execute at @e[type=area_effect_cloud,tag=reconnect_me] run scoreboard players set @e[type=area_effect_cloud,tag=connection,distance=..1,scores={path=3}] path 1
execute at @e[type=area_effect_cloud,tag=reconnect_me] run setblock ~ ~ ~ air
tag @s add pot_connection
execute as @e[type=area_effect_cloud,tag=reconnect_me] at @s rotated as @s positioned ^ ^ ^-6 run function map:gen/connect_back

##Clean up
kill @e[type=area_effect_cloud,tag=blue_block]
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
tag @s remove connect_me_next
tag @s remove reconnect_me
tag @s remove debug_aec
tag @s remove connect_me

execute if entity @p[tag=debug] if entity @e[type=area_effect_cloud,tag=connect_me_next] run say at least 1 door left
