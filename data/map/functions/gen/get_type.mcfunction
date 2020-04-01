scoreboard players operation limit random = types count
function map:general/seed_random

execute if score random random matches 0 store result score @s type run data get storage s types[0]
execute if score random random matches 1 store result score @s type run data get storage s types[1]
execute if score random random matches 2 store result score @s type run data get storage s types[2]
execute if score random random matches 3 store result score @s type run data get storage s types[3]
execute if score random random matches 4 store result score @s type run data get storage s types[4]
execute if score random random matches 5 store result score @s type run data get storage s types[5]

execute if score random random matches 0 store result score @s type run data remove storage s types[0]
execute if score random random matches 1 store result score @s type run data remove storage s types[1]
execute if score random random matches 2 store result score @s type run data remove storage s types[2]
execute if score random random matches 3 store result score @s type run data remove storage s types[3]
execute if score random random matches 4 store result score @s type run data remove storage s types[4]
execute if score random random matches 5 store result score @s type run data remove storage s types[5]

scoreboard players remove types count 1
scoreboard players set @s count 1
