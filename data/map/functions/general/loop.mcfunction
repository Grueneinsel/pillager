##Join game
scoreboard players add @a join 1
execute as @a[scores={join=1}] run function map:general/joingame
scoreboard players reset * join
scoreboard players set @a join 1

execute at @e[tag=keyboard_v] run particle flame ~ ~ ~ 0 0 0 0 1
say test
