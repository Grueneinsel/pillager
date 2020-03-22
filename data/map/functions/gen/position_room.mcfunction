tag @e[type=area_effect_cloud,tag=pot_room] remove pot_room
execute if entity @s[tag=2x2] as @e[type=area_effect_cloud,tag=test_room] at @s if blocks 0 100 0 24 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=1x2] as @e[type=area_effect_cloud,tag=test_room] at @s if blocks 0 100 0 12 100 24 ~ ~ ~ all run tag @s add pot_room
execute if entity @s[tag=2x1] as @e[type=area_effect_cloud,tag=test_room] at @s if blocks 0 100 0 24 100 12 ~ ~ ~ all run tag @s add pot_room
scoreboard players set total id 0
execute as @e[type=area_effect_cloud,tag=pot_room,sort=nearest] run function map:general/give_id
scoreboard players add total id 1
scoreboard players operation limit random = total id
function map:general/seed_random
execute as @e[type=area_effect_cloud,tag=pot_target] if score @s id = random random run tp @e[type=area_effect_cloud,tag=current_room] @s
execute at @s[tag=2x2] run fill ~ ~ ~ ~24 ~ ~24 birch_planks
execute at @s[tag=1x2] run fill ~ ~ ~ ~12 ~ ~24 birch_planks
execute at @s[tag=2x1] run fill ~ ~ ~ ~24 ~ ~12 birch_planks
