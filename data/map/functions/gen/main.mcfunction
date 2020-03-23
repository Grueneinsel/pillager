scoreboard players set z count 0
scoreboard players set x count 0
function map:gen/test_room
summon area_effect_cloud 0 5 0 {Tags:["4tiles","2x2","current_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["2tiles","1x2","current_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
summon area_effect_cloud 0 5 0 {Tags:["2tiles","2x1","current_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:gen/position_room
