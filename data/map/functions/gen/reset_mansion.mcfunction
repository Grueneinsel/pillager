execute at @e[tag=2x2] run fill ~ ~ ~ ~24 ~ ~24 air
execute at @e[tag=1x2] run fill ~ ~ ~ ~12 ~ ~24 air
execute at @e[tag=2x1] run fill ~ ~ ~ ~24 ~ ~12 air
execute at @e[tag=connection] run setblock ~ ~ ~ air
kill @e[tag=gen]
fill 0 5 0 84 5 84 air replace oak_planks
scoreboard players operation seed random = start_seed random
