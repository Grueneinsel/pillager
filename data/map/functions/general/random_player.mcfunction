execute unless data storage random random[0] run summon area_effect_cloud 0 0 0 {Tags:["random"]}
execute unless data storage random random[0] run data modify storage minute_rush random set from entity @e[type=area_effect_cloud,tag=random,limit=1] UUID

execute store result score @s random run data get storage random random[0]
scoreboard players operation @s random %= limit random

data remove storage random random[0]
kill @e[type=area_effect_cloud,tag=random]
