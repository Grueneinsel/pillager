execute at @e[type=area_effect_cloud,tag=pot_connection] run setblock ~ ~ ~ air
kill @e[type=area_effect_cloud,tag=pot_connection]
scoreboard players set total turn 0
tag @s add connect_me
execute if entity @s[tag=retry] run say AHHHHHHH
execute if entity @s[tag=retry] run function map:gen/reset_room
tag @s add retry
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] run setblock ~ ~ ~ air
say retry
function map:gen/search_connection
