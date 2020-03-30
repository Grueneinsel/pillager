execute if score ttest count matches 1 run say OVERFLOW
execute if score ttest count matches 1 run function map:gen/reset_room
scoreboard players set ttest count 1
scoreboard players add seed_test count 1
scoreboard players operation seed random = seed_test count
function map:gen/main
