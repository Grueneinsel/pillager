
execute at @s[tag=2x2] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"map:square_room_d"}

#Number of rooms * 8
scoreboard players set limit random 8
function map:general/seed_random

scoreboard players operation @s type = seed random
scoreboard players operation @s type /= 8 int
scoreboard players operation @s rotation = seed random
scoreboard players operation @s[tag=4tiles] rotation %= 4 int
scoreboard players operation @s[tag=2tiles] rotation %= 2 int
scoreboard players operation seed random %= 8 int
execute if score seed random matches 4..7 run tag @s add flip

execute at @s run setblock ~1 ~ ~ redstone_block
tag @s remove success_placed
