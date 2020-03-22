summon area_effect_cloud 0 0 0 {Tags:["random"]}
execute store result score @s random run data get entity @e[type=area_effect_cloud,tag=random,limit=1] UUIDMost 0.0000000001
execute if score @s random matches ..0 store result score @s random run scoreboard players operation @s random *= -1 int
scoreboard players operation @s random %= limit random
kill @e[type=area_effect_cloud,tag=random]
