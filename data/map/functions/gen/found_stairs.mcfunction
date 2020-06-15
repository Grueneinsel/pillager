##tag @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] add door
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] if entity @s[tag=EG] at @e[type=area_effect_cloud,tag=stair_entrance,tag=EG] run setblock ~ ~ ~ birch_planks
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance,sort=nearest,limit=1] if entity @s[tag=OG] at @e[type=area_effect_cloud,tag=stair_entrance,tag=OG] run setblock ~ ~ ~ birch_planks
setblock ~ ~ ~ blue_concrete
