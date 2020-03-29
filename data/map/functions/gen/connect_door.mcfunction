execute as @e[type=area_effect_cloud,tag=connect_me_next,limit=1,sort=nearest] run tag @s add connect_me
scoreboard players set @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] turn 0
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] run setblock ~ ~ ~ birch_planks
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] at @s run function map:gen/search_connection
#execute if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
