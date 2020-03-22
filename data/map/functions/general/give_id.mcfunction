scoreboard players set total id 0
execute as @e[tag=give_id,sort=nearest] run function map:general/loop_id
tag @e[tag=give_id] remove give_id
