##AEC is happy that he found a connection
say success
tag @e[type=area_effect_cloud,tag=blue_block] add reconnect_me
execute at @e[type=area_effect_cloud,tag=reconnect_me,sort=furthest,limit=1] run tag @e[type=area_effect_cloud,tag=reconnect_me,distance=1..] remove reconnect_me
execute at @e[type=area_effect_cloud,tag=reconnect_me] run scoreboard players set @e[type=area_effect_cloud,tag=connection,distance=..1,scores={path=4}] path 1
execute at @e[type=area_effect_cloud,tag=reconnect_me] run setblock ~ ~ ~ glass
tag @s add pot_connection
execute as @e[type=area_effect_cloud,tag=reconnect_me,tag=!stair_entrance] at @s rotated as @s positioned ^ ^ ^-6 run function map:gen/connect_back

##Clean up
kill @e[type=area_effect_cloud,tag=blue_block,tag=!stair_entrance]
tag @e[type=area_effect_cloud,tag=blue_block] remove blue_block
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
