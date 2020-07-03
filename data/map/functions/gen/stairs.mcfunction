execute positioned ~6 ~ ~ if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~ ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~6 ~ ~12 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~12 ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~ if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~ ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~12 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~12 ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~6 ~-5 ~6 run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["lukeAtmey"],Duration:10}
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s facing entity @e[type=area_effect_cloud,tag=lukeAtmey] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s run tp @s ~ ~ ~ ~ 0
kill @e[type=area_effect_cloud,tag=lukeAtmey]
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stair_entrance] path 0
execute at @e[type=minecraft:area_effect_cloud,tag=stair_entrance] run setblock ~ ~ ~ minecraft:birch_planks
