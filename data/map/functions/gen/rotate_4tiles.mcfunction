scoreboard players add @s count 1
scoreboard players add @s rotation 1
execute if score seed random matches 4..7

execute if score @s type matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"4tiles_0_doors"}

execute if entity @s[scores={rotation=1}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
execute if entity @s[scores={rotation=2}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}
execute if entity @s[scores={rotation=3}] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}
execute if entity @s[scores={rotation=1..2}] run data merge block ~ ~ ~ {posX: 24}
execute if entity @s[scores={rotation=2..3}] run data merge block ~ ~ ~ {posZ: 24}
execute if entity @s run setblock ~1 ~ ~ redstone_block
execute if entity @e[tag=new_entrance] if block ~ 4 ~ red_wool if entity @s run function map:gen/rotate_4tiles
