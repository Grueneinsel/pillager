execute if data storage random random run summon area_effect_cloud 0 0 0 {Tags:["random"]}
execute if data storage random random run data modify storage minute_rush random set from entity @e[type=area_effect_cloud,tag=random,limit=1] UUID

execute store result score random random run data get storage minecraft:minute_rush random[0]
execute store result score random random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUID[0]
execute if score random random matches ..0 store result score random random run scoreboard players operation random random *= -1 int
scoreboard players operation random random %= limit random

data remove storage random random[0]
kill @e[type=area_effect_cloud,tag=random]
