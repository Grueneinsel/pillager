scoreboard players set z count 0
scoreboard players set x count 0
scoreboard players operation start_seed random = seed random
function map:gen/test_room
kill @e[type=area_effect_cloud,tag=test_room,scores={x=2..4,z=0..1}]
summon area_effect_cloud 0 5 0 {Tags:["2x2","current_room","normal_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["2tiles","1x2","current_room","normal_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["2tiles","2x1","current_room","normal_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 60 5 6 {Tags:["entrance"],Duration:1000000}
summon area_effect_cloud 42 5 24 {Tags:["entrance"],Duration:1000000}
summon area_effect_cloud 24 5 6 {Tags:["entrance"],Duration:1000000}
execute at @e[type=area_effect_cloud,tag=entrance] run setblock ~ ~1 ~ blue_concrete
