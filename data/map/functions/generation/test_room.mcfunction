scoreboard players set limit random 4
function map:general/seed_random
scoreboard players operation @s rotation = random random
scoreboard players set limit random 6
function map:general/seed_random
execute store result entity @s Pos[2] double 12 run scoreboard players get random random
function map:general/seed_random
execute store result entity @s Pos[0] double 12 run scoreboard players get random random



execute at @s[tag=2x2] if blocks 0 100 0 24 100 24 ~ ~ ~ all run tag @s add success_placed
execute unless entity @s[tag=success_placed] run function map:generation/position_room
