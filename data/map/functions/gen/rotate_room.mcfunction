execute if entity @s[tag=2tiles] run data modify storage s types set value [0,1,2,3,4]
execute if entity @s[tag=2tiles] scoreboard players set types count 5

execute if entity @s[tag=2x2] run data modify storage s types set value [0,1,2,3,4,5,6,7,8,9]
execute if entity @s[tag=2x2] scoreboard players set types count 10

execute at @s[tag=2x2] run function map:gen/rotate_4tiles
execute at @s[tag=2tiles] run function map:gen/rotate_2tiles

execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~1 ~ ~ air run scoreboard players set @s rotation 3
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~ ~ ~1 air run scoreboard players set @s rotation 0
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~-1 ~ ~ air run scoreboard players set @s rotation 1
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~ ~ ~-1 air run scoreboard players set @s rotation 2
execute as @e[type=area_effect_cloud,tag=new_entrance] store result entity @s Rotation[0] float 90 run scoreboard players get @s rotation

execute as @e[type=area_effect_cloud,tag=new_entrance] run scoreboard players operation @s room_id = total room_id
tag @e[type=area_effect_cloud,tag=new_entrance] remove new_entrance
