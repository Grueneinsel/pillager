kill @e[type=area_effect_cloud,tag=new_entrance]
scoreboard players add @s count 1
scoreboard players add @s rotation 1
execute if score @s rotation matches 4 run scoreboard players add @s flip 1
execute if score @s flip matches 2 run scoreboard players set @s flip 0
execute if score @s rotation matches 4 run scoreboard players set @s rotation 0

execute if score @s type matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"4tiles_0_doors"}

execute if score @s flip matches 1 run data merge block ~ ~ ~ {mirror:"FRONT_BACK"}
execute if entity @s[scores={rotation=1}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
execute if entity @s[scores={rotation=2}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180"}
execute if entity @s[scores={rotation=3}] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}
execute if score @s flip matches 1 run scoreboard players add @s rotation 1
execute if entity @s[scores={rotation=1..2}] run data merge block ~ ~ ~ {posX: 24}
execute if entity @s[scores={rotation=2..3}] run data merge block ~ ~ ~ {posZ: 24}
execute if score @s flip matches 1 run scoreboard players remove @s rotation 1
execute if entity @s run setblock ~1 ~ ~ redstone_block

execute at @e[type=area_effect_cloud,tag=new_entrance] unless block ~ 4 ~ red_wool run tag @e[tag=new_entrance] remove new_entrance
execute at @e[type=area_effect_cloud,tag=new_entrance] if block ~ 4 ~ red_wool run function map:gen/rotate_4tiles
