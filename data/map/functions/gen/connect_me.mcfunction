execute store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute positioned ^ ^ ^12 unless block ~ ~ ~ birch_planks if block ~ 4 ~ red_concrete run summon area_effect_cloud {Tags:["pot_connection","connection","gen","connect_me","new_connection"]
execute positioned ^6 ^ ^6 unless block ~ ~ ~ birch_planks if block ~ 4 ~ red_concrete run summon area_effect_cloud {Tags:["pot_connection","connection","connection","gen","connect_me","new_connection","turn_left","turn_me"]
execute positioned ^-6 ^ ^6 unless block ~ ~ ~ birch_planks if block ~ ~-1 ~ red_concrete run summon area_effect_cloud {Tags:["pot_connection","connection","connection","gen","connect_me","new_connection","turn_right","turn_me"]
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] rotation = @s rotation
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] turn = @s turn
tag @s remove connect_me
execute at @e[type=area_effect_cloud,tag=new_connection] unless block ~ ~ ~ blue_concrete run setblock ~ ~ ~ birch_planks
tag @e[type=area_effect_cloud,tag=new_connection] remove new_connection
