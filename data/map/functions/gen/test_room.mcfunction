summon area_effect_cloud 0 5 0 {Tags:["tp_me","test_room","gen"],Duration:1000000}
execute as @e[type=area_effect_cloud,tag=tp_me] store result entity @s Pos[2] double 12 run scoreboard players get z count
execute as @e[type=area_effect_cloud,tag=tp_me] store result entity @s Pos[0] double 12 run scoreboard players get x count
scoreboard players operation @e[type=area_effect_cloud,tag=tp_me] x = x count
scoreboard players operation @e[type=area_effect_cloud,tag=tp_me] z = z count
tag @e[type=area_effect_cloud,tag=tp_me] remove tp_me
scoreboard players add total id 1
scoreboard players add x count 1
execute if score x count matches 7 run scoreboard players add z count 1
execute if score x count matches 7 run scoreboard players set x count 0
execute unless score z count matches 7.. run function map:gen/test_room
say test
