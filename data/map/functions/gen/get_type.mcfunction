scoreboard players operation limit random = @s types
function map:general/seed_random

execute as @s[scores={room_id=1}] run data modify storage transfer types set from storage room1 types
execute as @s[scores={room_id=2}] run data modify storage transfer types set from storage room2 types
execute as @s[scores={room_id=3}] run data modify storage transfer types set from storage room3 types
execute as @s[scores={room_id=4}] run data modify storage transfer types set from storage room4 types
execute as @s[scores={room_id=5}] run data modify storage transfer types set from storage room5 types

execute if score random random matches 0 store result score @s type run data remove storage transfer types[0]
execute if score random random matches 1 store result score @s type run data remove storage transfer types[1]
execute if score random random matches 2 store result score @s type run data remove storage transfer types[2]
execute if score random random matches 3 store result score @s type run data remove storage transfer types[3]
execute if score random random matches 4 store result score @s type run data remove storage transfer types[4]
execute if score random random matches 5 store result score @s type run data remove storage transfer types[5]

execute as @s[scores={room_id=1}] run data modify storage room1 types set from storage transfer types
execute as @s[scores={room_id=2}] run data modify storage room2 types set from storage transfer types
execute as @s[scores={room_id=3}] run data modify storage room3 types set from storage transfer types
execute as @s[scores={room_id=4}] run data modify storage room4 types set from storage transfer types
execute as @s[scores={room_id=5}] run data modify storage room5 types set from storage transfer types

scoreboard players remove @s types 1
scoreboard players set @s count 1
