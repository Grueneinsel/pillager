say Connect stairs

tag @e[type=area_effect_cloud,tag=connect_me] remove connect_me

execute unless entity @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] run tag @e[type=area_effect_cloud,tag=stair_entrance,scores={y=5}] add connect_me
execute unless entity @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] unless entity @e[type=area_effect_cloud,tag=connect_me] run tag @e[type=area_effect_cloud,tag=stair_entrance,scores={y=14}] add connect_me

scoreboard players set @e[type=area_effect_cloud,tag=connect_me] turn 0
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] at @s rotated as @s positioned ^ ^-9 ^6 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] turn 1
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] at @s rotated as @s positioned ^ ^-9 ^12 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 0
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] at @s rotated as @s positioned ~ ~-9 ~ run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 3
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] at @s rotated as @s positioned ^ ^9 ^6 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] turn 1
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] at @s rotated as @s positioned ^ ^9 ^12 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 0
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] at @s rotated as @s positioned ~ ~9 ~ run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 3
tag @e[type=area_effect_cloud,tag=stair_entrance,scores={turn=0},limit=1,sort=furthest] add center_stair

scoreboard players set total turn 0
scoreboard players set retry count 0
execute at @e[type=area_effect_cloud,tag=connect_me] run setblock ~ ~ ~ birch_planks
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] run setblock ~ ~ ~ blue_concrete
execute as @e[type=area_effect_cloud,tag=connect_me] at @s if block ~ ~ ~ blue_concrete run tag @s add found_it
execute at @e[type=area_effect_cloud,tag=center_stair] as @e[type=area_effect_cloud,tag=stair_entrance,tag=found_it,limit=1,sort=nearest] at @s run function map:gen/found_stairs
execute unless entity @e[type=area_effect_cloud,tag=found_it] as @e[type=area_effect_cloud,tag=connect_me,scores={turn=0},limit=1,sort=furthest] at @s run function map:gen/search_connection
execute as @e[type=area_effect_cloud,tag=connect_me] at @s if block ~ ~ ~ glass run tag @s add found_it
execute at @e[type=area_effect_cloud,tag=center_stair] as @e[type=area_effect_cloud,tag=stair_entrance,tag=found_it,limit=1,sort=furthest] at @s run function map:gen/found_stairs

tag @e[type=area_effect_cloud,tag=center_stair] remove center_stair
execute if entity @e[type=area_effect_cloud,tag=stair_entrance,scores={path=0}] run function function map:gen/connect_stairs
