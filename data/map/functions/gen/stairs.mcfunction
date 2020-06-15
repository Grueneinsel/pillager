execute positioned ~6 ~ ~ if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000}
execute positioned ~ ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000}
execute positioned ~6 ~ ~12 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000}
execute positioned ~12 ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~ if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000}
execute positioned ~ ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~12 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000}
execute positioned ~12 ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000}
execute positioned ~6 ~ ~6 run summon area_effect_cloud ~ ~ ~ {Tags:["lukeAtmey"],Duration:10}
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s run tp @s ~ ~ ~ facing @e[type=area_effect_cloud,tag=lukeAtmey]
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s run tp @s ~ ~ ~ ~ 0
kill @e[type=area_effect_cloud,tag=lukeAtmey]
execute at @e[type=minecraft:area_effect_cloud,tag=stair_entrance] run setblock ~ ~ ~ minecraft:purple_concrete
