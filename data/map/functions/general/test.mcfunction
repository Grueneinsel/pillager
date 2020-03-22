function map:general/seed_random
scoreboard players operation random random = seed random
scoreboard players operation random random %= limit random
execute if score random random matches 0 run scoreboard players add 0 test 1
execute if score random random matches 1 run scoreboard players add 1 test 1
execute if score random random matches 2 run scoreboard players add 2 test 1
execute if score random random matches 3 run scoreboard players add 3 test 1
execute if score random random matches 4 run scoreboard players add 4 test 1
execute if score random random matches 5 run scoreboard players add 5 test 1
execute if score random random matches 6 run scoreboard players add 6 test 1
execute if score random random matches 7 run scoreboard players add 7 test 1
execute if score random random matches 8 run scoreboard players add 8 test 1
execute if score random random matches 9 run scoreboard players add 9 test 1
function map:general/test
