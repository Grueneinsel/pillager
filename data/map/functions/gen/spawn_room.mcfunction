##Number of rooms * 8
execute if entity @s[tag=4tiles] run scoreboard players set limit random 8
execute if entity @s[tag=2tiles] run scoreboard players set limit random 40
function map:general/seed_random

scoreboard players operation @s type = seed random
scoreboard players operation @s type /= 8 int
scoreboard players operation @s rotation = seed random
scoreboard players operation @s[tag=4tiles] rotation %= 4 int
scoreboard players operation @s[tag=2tiles] rotation %= 2 int
scoreboard players operation seed random %= 8 int
execute if score seed random matches 4..7 run scoreboard players set @s flip 1
execute if score seed random matches 0..3 run scoreboard players set @s flip 1
