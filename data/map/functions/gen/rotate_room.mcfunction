scoreboard players operation @s type = random random
scoreboard players operation @s type /= 8 int
scoreboard players operation @s rotation = random random
scoreboard players operation @s[tag=2x2] rotation %= 4 int
scoreboard players operation @s[tag=2tiles] rotation %= 2 int
scoreboard players operation random random %= 8 int
execute if score random random matches 4..7 run scoreboard players set @s flip 1
execute if score random random matches 0..3 run scoreboard players set @s flip 0

execute at @s[tag=2x2] run function map:gen/rotate_4tiles
execute at @s[tag=2tiles] run function map:gen/rotate_2tiles

execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~1 ~ ~ air run scoreboard players set @s rotation 3
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~ ~ ~1 air run scoreboard players set @s rotation 0
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~-1 ~ ~ air run scoreboard players set @s rotation 1
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~ ~ ~-1 air run scoreboard players set @s rotation 2

execute as @e[type=area_effect_cloud,tag=new_entrance] run scoreboard players operation @s room_id = total room_id
tag @e[type=area_effect_cloud,tag=new_entrance] remove new_entrance
