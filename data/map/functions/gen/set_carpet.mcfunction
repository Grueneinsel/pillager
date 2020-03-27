execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 black_carpet run summon area_effect_cloud ~ ~ ~-1 {Tags:["swap_carpet","latest_swap"]}
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~1 ~ ~ black_carpet run summon area_effect_cloud ~1 ~ ~ {Tags:["swap_carpet","latest_swap"]}
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~1 black_carpet run summon area_effect_cloud ~ ~ ~1 {Tags:["swap_carpet","latest_swap"]}
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~-1 ~ ~ black_carpet run summon area_effect_cloud ~-1 ~ ~ {Tags:["swap_carpet","latest_swap"]}

kill @e[type=area_effect_cloud,tag=swap_carpet,tag=!latest_swap]
tag @e[type=area_effect_cloud,tag=latest_swap] remove latest_swap

execute at @e[type=area_effect_cloud,tag=latest_swap] run setblock ~ ~ ~ red_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] unless block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ orange_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets unless block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ magenta_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets unless block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ light_blue_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets unless block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ lime_carpet

execute at @e[type=area_effect_cloud,tag=latest_swap] unless block ~ ~ ~-1 #minecraft:carpets unless block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ pink_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets unless block ~1 ~ ~ #minecraft:carpets unless block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ gray_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets unless block ~ ~ ~1 #minecraft:carpets unless block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ light_gray_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] unless block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets unless block ~-1 ~ ~ #minecraft:carpets run setblock ~ ~ ~ cyan_carpet

execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets if block ~-1 ~ ~1 #minecraft:carpets run setblock ~ ~ ~ purple_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets if block ~1 ~ ~1 #minecraft:carpets run setblock ~ ~ ~ blue_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets if block ~1 ~ ~-1 #minecraft:carpets run setblock ~ ~ ~ brown_carpet
execute at @e[type=area_effect_cloud,tag=latest_swap] if block ~ ~ ~-1 #minecraft:carpets if block ~1 ~ ~ #minecraft:carpets if block ~ ~ ~1 #minecraft:carpets if block ~-1 ~ ~ #minecraft:carpets if block ~-1 ~ ~-1 #minecraft:carpets run setblock ~ ~ ~ green_carpet

execute if entity @e[type=area_effect_cloud,tag=latest_swap] run function map:gen/set_carpet
#
