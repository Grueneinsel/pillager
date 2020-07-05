execute unless entity @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] run tag @e[type=area_effect_cloud,tag=stair_entrance,scores={y=5}] add connect_me
execute unless entity @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] unless entity @e[type=area_effect_cloud,tag=connect_me] run tag @e[type=area_effect_cloud,tag=stair_entrance,scores={y=5}] add connect_me

scoreboard players set @e[type=area_effect_cloud,tag=connect_me] turn 0
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] at @s rotated as @s positioned ^ ^-9 ^6 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] turn 1
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] at @s rotated as @s positioned ^ ^-9 ^12 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 0
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=14}] at @s rotated as @s positioned ~ ~-9 ~ run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 3
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] at @s rotated as @s positioned ^ ^9 ^6 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..7] turn 1
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] at @s rotated as @s positioned ^ ^9 ^12 run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 0
execute as @e[type=area_effect_cloud,tag=stair_entrance,tag=door,scores={y=5}] at @s rotated as @s positioned ~ ~9 ~ run scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,distance=..1] turn 3

scoreboard players set total turn 0
scoreboard players set retry count 0
execute as @e[type=area_effect_cloud,tag=connect_me] at @s if block ~ ~ ~ blue_concrete run tag @s add blue_block
execute at @e[type=area_effect_cloud,tag=stair_entrance,tag=connect_me,scores={turn=0}] as @e[type=area_effect_cloud,tag=stair_entrance,tag=blue_block,limit=1,sort=nearest] at @s run function map:gen/found_stairs
execute unless entity @e[type=area_effect_cloud,tag=blue_block] as @e[type=area_effect_cloud,tag=connect_me,scores={turn=0}] at @s run function map:gen/search_connection
