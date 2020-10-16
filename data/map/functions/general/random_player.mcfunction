execute if data storage random random run summon area_effect_cloud 0 0 0 {Tags:["random"]}
execute if data storage random random run data modify storage minute_rush random set from entity @e[type=area_effect_cloud,tag=random,limit=1] UUID

execute store result score random random run data get storage random random[0]
execute store result score @s random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
scoreboard players operation @s random %= limit random

data remove storage random random[0]
kill @e[type=area_effect_cloud,tag=random]
