tag @s remove reconnect_me
execute as @e[type=area_effect_cloud,tag=pot_connection,distance=..7] run scoreboard players operation total turn < @s turn
execute as @e[type=area_effect_cloud,tag=pot_connection,distance=..7] if score @s turn = total turn run tag @s add reconnect_me
execute at @e[type=area_effect_cloud,tag=new_reconnect,sort=furthest,limit=1] run tag @e[type=area_effect_cloud,tag=reconnect_me,distance=1..] remove reconnect_me
execute positioned ^ ^ ^-6 if block ~ ~ ~ oak_planks run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","connection","gen"],Duration:1000000}
execute positioned ^6 ^ ^ if block ~ ~ ~ oak_planks run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","connection","gen"],Duration:1000000}
execute positioned ^-6 ^ ^ if block ~ ~ ~ oak_planks run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","connection","gen"],Duration:1000000}

#execute at @e[type=area_effect_cloud,tag=reconnect_me] run kill @e[type=area_effect_cloud,tag=connection,tag=!reconnect_me,tag=!pot_connection,distance=..1,limit=1]
scoreboard players set @e[type=area_effect_cloud,tag=reconnect_me] path 1
scoreboard players set @e[type=area_effect_cloud,tag=pot_connection,tag=!reconnect_me,distance=..7] path 3
tag @e[type=area_effect_cloud,tag=pot_connection,distance=..7] remove pot_connection
execute unless score total turn matches 0 as @e[type=area_effect_cloud,tag=reconnect_me] rotated as @s at @s positioned ^ ^ ^-6 run function map:gen/connect_back
