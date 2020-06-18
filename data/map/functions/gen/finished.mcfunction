scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=1}] path 2
scoreboard players set @e[type=area_effect_cloud,tag=connection,scores={path=3}] path 4
execute at @e[type=area_effect_cloud,tag=connection,scores={path=4}] run setblock ~ ~ ~ birch_planks
execute at @e[type=area_effect_cloud,tag=connection,scores={path=2}] run setblock ~ ~ ~ glass
execute at @e[type=area_effect_cloud,tag=door] run setblock ~ ~ ~ blue_concrete
execute at @e[type=area_effect_cloud,tag=stair_entrance,scores={path=1}] run setblock ~ ~ ~ purple_concrete
