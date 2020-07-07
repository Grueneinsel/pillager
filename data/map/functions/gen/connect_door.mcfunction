execute if entity @p[tag=debugmsg] run say connect door

##Set walls of other paths
execute at @e[type=area_effect_cloud,tag=connection,scores={path=3..4}] run setblock ~ ~ ~ birch_planks
execute at @e[type=area_effect_cloud,tag=stair_entrance,scores={path=2}] run setblock ~ ~ ~ birch_planks
tag @e[type=area_effect_cloud,tag=connect_me] remove connect_me

##Determine nearest door of a given room
execute store result score doors count if entity @e[type=area_effect_cloud,tag=connect_me_next]
execute if score doors count matches 1 run tag @e[type=area_effect_cloud,tag=connect_me_next] add connect_me
execute if score doors count matches 2.. run function map:gen/nearest_door

##Setup scores and prepare search for path
scoreboard players set total turn 0
scoreboard players set retry count 0
scoreboard players set @e[type=area_effect_cloud,tag=connect_me] turn 0
tag @e[type=area_effect_cloud,tag=connect_me] add debug_aec
execute as @e[type=area_effect_cloud,tag=connect_me] at @s rotated as @s positioned ^ ^ ^12 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=connect_me] at @s rotated as @s positioned ^6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute as @e[type=area_effect_cloud,tag=connect_me] at @s rotated as @s positioned ^-6 ^ ^6 if block ~ ~ ~ oak_planks run setblock ~ ~ ~ air
execute at @e[type=area_effect_cloud,tag=stair_entrance,scores={path=0}] run setblock ~ ~ ~ oak_planks
execute as @e[type=area_effect_cloud,tag=connect_me] at @s run function map:gen/search_connection

tag @p[tag=debug_me] remove debug_me

##Loop through doors
execute unless entity @p[tag=debug] if score reset count matches 0..2 if entity @e[type=area_effect_cloud,tag=connect_me_next] run function map:gen/connect_door
