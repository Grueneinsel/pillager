#test
tag @s remove connect_me
execute store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation
execute rotated as @s positioned ^ ^ ^12 if block ~ 4 ~ red_concrete if block ~ ~ ~ #map:valid run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","latest_connection","connection","gen","connect_me","new_connection","straight"],Duration:1000000}
execute rotated as @s positioned ^6 ^ ^6 if block ~ 4 ~ red_concrete if block ~ ~ ~ #map:valid run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","latest_connection","connection","gen","connect_me","new_connection","turn_left","turn_me"],Duration:1000000}
execute rotated as @s positioned ^-6 ^ ^6 if block ~ 4 ~ red_concrete if block ~ ~ ~ #map:valid run summon area_effect_cloud ~ ~ ~ {Tags:["pot_connection","latest_connection","connection","gen","connect_me","new_connection","turn_right","turn_me"],Duration:1000000}
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] rotation = @s rotation
scoreboard players operation @e[type=area_effect_cloud,tag=new_connection] turn = @s turn
tag @e[type=area_effect_cloud,tag=new_connection] remove new_connection
