execute if score @s[tag=2x2] type matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"4tiles_0_doors"}
execute at @s[scores={rotation=1}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
execute at @s[scores={rotation=2}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}
execute at @s[scores={rotation=3}] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}
execute at @s[tag=2x2,scores={rotation=1..2}] run data merge block ~ ~ ~ {posX: 24}
execute at @s[tag=2x2,scores={rotation=2..3}] run data merge block ~ ~ ~ {posZ: 24}
execute at @s run setblock ~1 ~ ~ redstone_block
tag @s remove success_placed

execute at @e[tag=new_entrance] if block ~ 4 ~ red_wool at @s run function map:generation/blocked_room
