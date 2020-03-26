execute as @e[type=area_effect_cloud,tag=connect_me,sort=nearest] if score @s turn matches total turn at @s run function map:gen/connect_me
scoreboard players add total turn 1
scoreboard players set @e[type=area_effect_cloud,tag=connect_me,tag=turn_left,scores={rotation=-1}] rotation 3
scoreboard players set @e[type=area_effect_cloud,tag=connect_me,tag=turn_right,scores={rotation=4}] rotation 0
