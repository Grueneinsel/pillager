execute store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute positioned ^ ^ ^12 if block ~ 4 ~ red_concrete unless block ~ ~ ~ birch_planks run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","connection","gen","connect_me","new_connection"],Duration:1000000}
execute positioned ^6 ^ ^6 if block ~ 4 ~ red_concrete unless block ~ ~ ~ birch_planks run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","connection","gen","connect_me","new_connection","turn_left","turn_me"],Duration:1000000}
execute positioned ^-6 ^ ^6 if block ~ 4 ~ red_concrete unless block ~ ~ ~ birch_planks run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","connection","gen","connect_me","new_connection","turn_right","turn_me"],Duration:1000000}
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] rotation = @s rotation
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] turn = @s turn
tag @s remove connect_me
execute at @e[type=area_effect_cloud,tag=new_connection] unless block ~ ~ ~ blue_concrete run setblock ~ ~ ~ birch_planks
tag @e[type=area_effect_cloud,tag=new_connection] remove new_connection
