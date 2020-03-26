execute store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute positioned ^ ^ ^12 if block ~ ~ ~ air if block ~ ~-1 ~ red_concrete run summon area_effect_cloud {Tags:["connection","gen","connect_me","new_connection"]
execute positioned ^6 ^ ^6 if block ~ ~ ~ air if block ~ ~-1 ~ red_concrete run summon area_effect_cloud {Tags:["connection","gen","connect_me","new_connection","turn_left","turn"]
execute positioned ^-6 ^ ^6 if block ~ ~ ~ air if block ~ ~-1 ~ red_concrete run summon area_effect_cloud {Tags:["connection","gen","connect_me","new_connection","turn_right","turn"]
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] rotation = @s rotation
scoreboard players add @e[type=area_effect_cloud,tag=new_connection,tag=turn_left] rotation 1
scoreboard players remove @e[type=area_effect_cloud,tag=new_connection,tag=turn_right] rotation 1
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] turn = @s turn
scoreboard players add @e[type=area_effect_cloud,tag=new_connection,tag=!turn] turn 1
scoreboard players add @e[type=area_effect_cloud,tag=new_connection,tag=turn] turn 2
tag @s remove connect_me
tag @e[type=area_effect_cloud,tag=new_connection] remove new_connection
