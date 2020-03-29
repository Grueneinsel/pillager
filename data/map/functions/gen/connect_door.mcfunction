scoreboard players set distance count 200
scoreboard players set total turn 0
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation distance count < @s count
execute as @e[type=area_effect_cloud,tag=connect_me_next] if score @s count = distance count run tag @s add connect_me
execute at @e[type=area_effect_cloud,tag=connect_me,sort=nearest,limit=1] run tag @e[type=area_effect_cloud,tag=connect_me,distance=1..] remove connect_me
scoreboard players set @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] turn 0
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] run setblock ~ ~ ~ birch_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] at @s run function map:gen/search_connection
#execute if score reset count matches 0..1 if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
