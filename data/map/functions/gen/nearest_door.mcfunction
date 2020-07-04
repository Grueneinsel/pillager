scoreboard players set distance count 200
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation distance count < @s count
execute as @e[type=area_effect_cloud,tag=connect_me_next] if score @s count = distance count run tag @s add connect_me
execute at @e[type=area_effect_cloud,tag=connect_me,sort=nearest,limit=1] run tag @e[type=area_effect_cloud,tag=connect_me,distance=1..] remove connect_me
