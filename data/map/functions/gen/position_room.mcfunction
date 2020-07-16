tag @e[type=area_effect_cloud,tag=pot_room] remove pot_room
execute if entity @s[tag=2x2] as @e[type=area_effect_cloud,tag=test_room,scores={x=..5,z=3..5}] at @s if blocks 0 100 0 24 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=1x2] as @e[type=area_effect_cloud,tag=test_room,scores={z=..5}] at @s if blocks 0 100 0 12 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=2x1] as @e[type=area_effect_cloud,tag=test_room,scores={x=..5}] at @s if blocks 0 100 0 24 100 12 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=stairs] as @e[type=area_effect_cloud,tag=test_room,scores={z=4..}] at @s positioned ~ ~-9 ~ if blocks 0 100 0 10 109 10 ~1 ~ ~1 all unless entity @e[type=area_effect_cloud,tag=entrance,dx=12,dz=12,dy=10] run tag @s add pot_room
scoreboard players set total id 0
execute positioned 0 0 0 as @e[type=area_effect_cloud,tag=pot_room,sort=nearest] run function map:general/give_id
scoreboard players operation limit random = total id
function map:general/seed_random
execute if score total id matches 0 run kill @s
execute as @e[type=area_effect_cloud,tag=pot_room] if score @s id = random random run tp @e[type=area_effect_cloud,tag=current_room] @s
scoreboard players add total room_id 1
scoreboard players operation @s room_id = total room_id

execute unless entity @s[tag=stairs] run function map:gen/setup_rotate_room

tag @s remove current_room
