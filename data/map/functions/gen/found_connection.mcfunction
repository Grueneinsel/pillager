execute if entity @p[tag=debug] run say found connection
execute as @e[type=area_effect_cloud,tag=connect_me] at @s if block ~ ~ ~ blue_concrete run tag @s add blue_block
tag @e[type=area_effect_cloud,tag=blue_block] add reconnect_me
execute at @e[type=area_effect_cloud,tag=reconnect_me,sort=furthest,limit=1] run tag @e[type=area_effect_cloud,tag=reconnect_me,distance=1..] remove reconnect_me
execute as @e[type=area_effect_cloud,tag=reconnect_me] store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute at @e[type=area_effect_cloud,tag=reconnect_me] run tag @e[type=area_effect_cloud,tag=entrance,distance=..1,sort=nearest,limit=1] add path_found
tag @s add pot_connection
execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=reconnect_me] at @s rotated as @s positioned ^ ^ ^6 as @e[type=area_effect_cloud,tag=connection,distance=..7,scores={path=2}] at @s rotated as @s run function map:gen/connect_merge
execute at @e[type=area_effect_cloud,tag=reconnect_me] run function map:gen/connect_back
execute as @e[type=area_effect_cloud,tag=blue_block] at @s if entity @e[type=area_effect_cloud,distance=..1] run kill @s
tag @e[type=area_effect_cloud,tag=blue_block] remove blue_block
kill @e[type=area_effect_cloud,tag=pot_connection]
tag @s remove connect_me_next
tag @s remove reconnect_me
tag @s remove demo
