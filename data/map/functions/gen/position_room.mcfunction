tag @e[type=area_effect_cloud,tag=pot_room] remove pot_room
execute if entity @s[tag=2x2] as @e[type=area_effect_cloud,tag=test_room,scores={x=..5,z=3..5}] at @s if blocks 0 100 0 24 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=1x2] as @e[type=area_effect_cloud,tag=test_room,scores={z=..5}] at @s if blocks 0 100 0 12 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=2x1] as @e[type=area_effect_cloud,tag=test_room,scores={x=..5}] at @s if blocks 0 100 0 24 100 12 ~ ~ ~ all run tag @s add pot_room
scoreboard players set total id 0
execute positioned 0 0 0 as @e[type=area_effect_cloud,tag=pot_room,sort=nearest] run function map:general/give_id
scoreboard players operation limit random = total id
function map:general/seed_random
execute if score total id matches 0 run kill @s
execute as @e[type=area_effect_cloud,tag=pot_room] if score @s id = random random run tp @e[type=area_effect_cloud,tag=current_room] @s
scoreboard players add total room_id 1
scoreboard players operation @s room_id = total room_id

scoreboard players set limit random 8
function map:general/seed_random

scoreboard players operation @s rotation = random random
scoreboard players operation @s[tag=2x2] rotation %= 4 int
scoreboard players operation @s[tag=2tiles] rotation %= 2 int
execute if score random random matches 4..7 run scoreboard players set @s flip 1
execute if score random random matches 0..3 run scoreboard players set @s flip 0
scoreboard players set @s count 5

function map:gen/rotate_room

tag @s remove current_room
