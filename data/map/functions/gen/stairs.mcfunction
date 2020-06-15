execute positioned ~6 ~ ~ if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000,Rotation:[0.0,0.0]}
execute positioned ~ ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000,Rotation:[-90.0,0.0]}
execute positioned ~6 ~ ~12 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000,Rotation:[180.0,0.0]}
execute positioned ~12 ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","EG","gen"],Duration:1000000,Rotation:[90.0,0.0]}
execute positioned ~6 ~-9 ~ if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000,Rotation:[0.0,0.0]}
execute positioned ~ ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000,Rotation:[-90.0,0.0]}
execute positioned ~6 ~-9 ~12 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000,Rotation:[180.0,0.0]}
execute positioned ~12 ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","OG","gen"],Duration:1000000,Rotation:[90.0,0.0]}
execute at @e[type=minecraft:area_effect_cloud,tag=stair_entrance] run setblock ~ ~ ~ minecraft:purple_concrete
