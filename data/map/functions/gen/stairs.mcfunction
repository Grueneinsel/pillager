execute positioned ~6 ~ ~ if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","EG","gen"],Duration:1000000}
execute positioned ~ ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","EG","gen"],Duration:1000000}
execute positioned ~6 ~ ~12 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","EG","gen"],Duration:1000000}
execute positioned ~12 ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","EG","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~ if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","OG","gen"],Duration:1000000}
execute positioned ~ ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","OG","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~12 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","OG","gen"],Duration:1000000}
execute positioned ~12 ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~ ~ ~ {Tags:["stair_entrance","connection","OG","gen"],Duration:1000000}
execute at @e[type=minecraft:area_effect_cloud,tag=stair_entrance] run setblock ~ ~ ~ minecraft:purple_concrete