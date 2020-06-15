execute at @e[tag=2x2] run fill ~ ~ ~ ~24 ~9 ~24 air
execute at @e[tag=1x2] run fill ~ ~ ~ ~12 ~ ~24 air
execute at @e[tag=2x1] run fill ~ ~ ~ ~24 ~ ~12 air
execute at @e[tag=connection] run setblock ~ ~ ~ air
execute at @e[tag=stair_entrance] run setblock ~ ~ ~ air
kill @e[tag=gen]
fill 0 5 0 84 5 84 air replace oak_planks
fill 0 14 0 84 14 84 air replace oak_planks
fill 30 14 24 54 14 24 air
##scoreboard players operation seed random = start_seed random
