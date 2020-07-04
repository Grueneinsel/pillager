scoreboard players set limit random 8
function map:general/seed_random

scoreboard players operation @s rotation = random random
scoreboard players operation @s[tag=2x2] rotation %= 4 int
scoreboard players operation @s[tag=2tiles] rotation %= 2 int
execute if score random random matches 4..7 run scoreboard players set @s flip 1
execute if score random random matches 0..3 run scoreboard players set @s flip 0

scoreboard players set @s[tag=!2x2] types 5
scoreboard players set @s count 0

function map:gen/rotate_room
