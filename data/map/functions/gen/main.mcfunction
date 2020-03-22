summon area_effect_cloud 0 5 0 {Tags:["square_room","2x2","current_room"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=current_room] run function map:generation/spawn_room
