execute if entity @p[tag=debugmsg] run say found connection

##AEC is happy that he found a connection
tag @e[type=area_effect_cloud,tag=blue_block] add reconnect_me
execute at @e[type=area_effect_cloud,tag=reconnect_me,sort=furthest,limit=1] run tag @e[type=area_effect_cloud,tag=reconnect_me,distance=1..] remove reconnect_me
execute as @e[type=area_effect_cloud,tag=reconnect_me] store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute at @e[type=area_effect_cloud,tag=reconnect_me] run tag @e[type=area_effect_cloud,tag=door,distance=..1] add path_found
execute at @e[type=area_effect_cloud,tag=reconnect_me] as @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] at @s run function map:gen/found_stairs
execute at @e[type=area_effect_cloud,tag=reconnect_me] run scoreboard players set @e[type=area_effect_cloud,tag=connection,distance=..1,scores={path=4}] path 1
execute at @e[type=area_effect_cloud,tag=reconnect_me] run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=reconnect_me] at @s rotated as @s positioned ^ ^ ^6 as @e[type=area_effect_cloud,tag=connection,distance=..7,scores={path=2}] at @s rotated as @s run function map:gen/connect_merge

##Connect on the shortest way back
tag @s add pot_connection
execute at @e[type=area_effect_cloud,tag=reconnect_me] run function map:gen/connect_back
kill @e[type=area_effect_cloud,tag=blue_block]
kill @e[type=area_effect_cloud,tag=pot_connection]
tag @s remove connect_me_next
tag @s remove reconnect_me
