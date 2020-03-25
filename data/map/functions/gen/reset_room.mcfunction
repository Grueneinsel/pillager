execute at @e[tag=2x2] run fill ~ ~ ~ ~24 ~ ~24 air
execute at @e[tag=1x2] run fill ~ ~ ~ ~12 ~ ~24 air
execute at @e[tag=2x1] run fill ~ ~ ~ ~24 ~ ~12 air
execute at @e[tag=entrance] run setblock ~ ~1 ~ air
kill @e[tag=gen]
kill @e[type=area_effect_cloud,tag=entrance]
