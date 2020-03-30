function map:gen/reset_mansion
scoreboard players add seed_test count 1
scoreboard players operation seed random = seed_test count
function map:gen/main
