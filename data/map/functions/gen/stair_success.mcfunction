##AEC is happy that he found a connection
tag @e[type=area_effect_cloud,tag=blue_block] add reconnect_me
execute at @e[type=area_effect_cloud,tag=reconnect_me,sort=furthest,limit=1] run tag @e[type=area_effect_cloud,tag=reconnect_me,distance=1..] remove reconnect_me
execute at @e[type=area_effect_cloud,tag=reconnect_me] run scoreboard players set @e[type=area_effect_cloud,tag=connection,distance=..1,scores={path=4}] path 1
execute at @e[type=area_effect_cloud,tag=reconnect_me] run setblock ~ ~ ~ glass
execute at @e[type=area_effect_cloud,tag=reconnect_me] run setblock ~ ~1 ~ glass
execute as @e[type=area_effect_cloud,tag=reconnect_me] store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute as @e[type=area_effect_cloud,tag=reconnect_me,tag=!stair_entrance] at @s rotated as @s positioned ^ ^ ^-6 run function map:gen/connect_back

##Clean up
tag @e[type=area_effect_cloud,tag=pot_connection,tag=stair_entrance] remove pot_connection
tag @e[type=area_effect_cloud,tag=blue_block,tag=stair_entrance] remove blue_block
kill @e[type=area_effect_cloud,tag=blue_block]
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
tag @e[type=area_effect_cloud,tag=connect_me] remove connect_me
