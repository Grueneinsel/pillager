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

#Number of rooms * 8
execute if entity @s[tag=2x2] run scoreboard players set limit random 8
execute if entity @s[tag=2tiles] run scoreboard players set limit random 40
function map:general/seed_random
scoreboard players add total room_id 1

function map:gen/rotate_room

tag @s remove current_room
