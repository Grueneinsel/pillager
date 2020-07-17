scoreboard players operation @s test = @s bin_connection
scoreboard players operation @s test %= 5 int
execute if score @s test matches 0 run function map:set/I_con
