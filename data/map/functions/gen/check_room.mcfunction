tag @e[type=area_effect_cloud,tag=pot_room] remove pot_room
execute if entity @s[tag=2x2] as @e[type=area_effect_cloud,tag=test_room] at @s if blocks 0 100 0 24 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=1x2] as @e[type=area_effect_cloud,tag=test_room] at @s if blocks 0 100 0 12 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=2x1] as @e[type=area_effect_cloud,tag=test_room] at @s if blocks 0 100 0 24 100 12 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=2x2] as @e[type=area_effect_cloud,tag=pot_room,scores={z=0..2}] run tag @s remove pot_room
scoreboard players set total id 0
execute positioned 0 0 0 as @e[type=area_effect_cloud,tag=pot_room,sort=nearest] run function map:general/give_id
scoreboard players operation limit random = total id
function map:general/seed_random
execute if score total id matches 0 run kill @s
execute as @e[type=area_effect_cloud,tag=pot_room] if score @s id = random random run tp @e[type=area_effect_cloud,tag=current_room] @s

##Number of rooms * 8
execute if entity @s[tag=2x2] run scoreboard players set limit random 8
execute if entity @s[tag=2tiles] run scoreboard players set limit random 40
function map:general/seed_random

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
execute at @s[tag=2x2] run fill ~ ~ ~ ~24 ~ ~24 birch_planks
execute at @s[tag=1x2] run fill ~ ~ ~ ~12 ~ ~24 birch_planks
execute at @s[tag=2x1] run fill ~ ~ ~ ~24 ~ ~12 birch_planks
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~1 ~ ~ air run scoreboard players set @s rotation 3
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~ ~ ~1 air run scoreboard players set @s rotation 0
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~-1 ~ ~ air run scoreboard players set @s rotation 1
execute as @e[type=area_effect_cloud,tag=new_entrance] at @s if block ~ ~ ~-1 air run scoreboard players set @s rotation 2
scoreboard players add total room_id 1
execute as @e[type=area_effect_cloud,tag=new_entrance] run scoreboard players operation @s room_id = total room_id

tag @e[type=area_effect_cloud,tag=new_entrance] remove new_entrance
tag @s remove current_room