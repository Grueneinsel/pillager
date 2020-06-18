scoreboard players set distance count 200
scoreboard players set total turn 0
scoreboard players set retry count 0
tag @e[type=area_effect_cloud,tag=connect_me] remove connect_me
execute as @e[type=area_effect_cloud,tag=connect_me_next] run scoreboard players operation distance count < @s count
execute as @e[type=area_effect_cloud,tag=connect_me_next] if score @s count = distance count run tag @s add connect_me
execute at @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me,sort=nearest,limit=1] run tag @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me,distance=1..] remove connect_me
scoreboard players set @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] turn 0
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] unless block ~ ~ ~ oak_planks run setblock ~ ~ ~ birch_planks
execute at @e[type=area_effect_cloud,tag=stair_entrance] run setblock ~ ~ ~ minecraft:birch_planks
tag @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] add demo
execute as @e[type=area_effect_cloud,tag=connect_me_next,tag=connect_me] at @s run function map:gen/search_connection
execute if entity @p[tag=debug] if score reset count matches 0..2 if entity @e[type=area_effect_cloud,tag=connect_me_next,tag=!demo] run say at least 1 door left
execute unless entity @p[tag=debug] if score reset count matches 0..2 if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
