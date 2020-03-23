#Get two points
execute store result score @s x run data get entity @s Pos[0] 1000
execute store result score @s y run data get entity @s Pos[1] 1000
execute store result score @s z run data get entity @s Pos[2] 1000
summon area_effect_cloud ^ ^ ^1 {Tags:["directional_vector","keyboard_pos"]}
execute as @e[type=area_effect_cloud,tag=directional_vector] store result score @s x run data get entity @s Pos[0] 1000
execute as @e[type=area_effect_cloud,tag=directional_vector] store result score @s y run data get entity @s Pos[1] 1000
execute as @e[type=area_effect_cloud,tag=directional_vector] store result score @s z run data get entity @s Pos[2] 1000
tag @s add keyboard_pos

#XYZ Coordinates of the sign * 1000
scoreboard players remove @e[type=!armor_stand,tag=keyboard_pos] x 32000
scoreboard players remove @e[type=!armor_stand,tag=keyboard_pos] y 7000
scoreboard players remove @e[type=!armor_stand,tag=keyboard_pos] z 5000
tellraw @a [{"text":"x= "},{"score":{"name":"@s","objective":"x"}},{"text":"   y= "},{"score":{"name":"@s","objective":"y"}},{"text":"   z= "},{"score":{"name":"@s","objective":"z"}}]
execute as @e[type=area_effect_cloud,tag=directional_vector] run tellraw @a [{"text":"x= "},{"score":{"name":"@s","objective":"x"}},{"text":"   y= "},{"score":{"name":"@s","objective":"y"}},{"text":"   z= "},{"score":{"name":"@s","objective":"z"}}]

#For sign in x-direction switch z and x
scoreboard players operation @s z *= 1000 int
scoreboard players operation @e[type=area_effect_cloud,tag=directional_vector] z /= @s z
scoreboard players remove @e[type=area_effect_cloud,tag=directional_vector] z 1000
scoreboard players set @s count 1000000
scoreboard players operation @s count /= @e[type=area_effect_cloud,tag=directional_vector] z

scoreboard players operation @s x *= -1 int
scoreboard players operation @s x += @e[type=area_effect_cloud,tag=directional_vector] x
scoreboard players operation @s x *= @s count
scoreboard players operation @s x /= 1000 int
scoreboard players operation @s x += @e[type=area_effect_cloud,tag=directional_vector] x
tellraw @a [{"text":"x= "},{"score":{"name":"@s","objective":"x"}},{"text":"   n= "},{"score":{"name":"@s","objective":"count"}}]
