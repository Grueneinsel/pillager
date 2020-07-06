execute positioned ~6 ~ ~ if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~ ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~6 ~ ~12 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~12 ~ ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~ if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~ ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~6 ~-9 ~12 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute positioned ~12 ~-9 ~6 if block ~ ~ ~ air run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["stair_entrance","gen"],Duration:1000000}
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s unless block ~ ~ ~ #map:valid run tag @s add kill_me
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s unless block ~ 4 ~ red_concrete run tag @s add kill_me
kill @e[type=minecraft:area_effect_cloud,tag=kill_me]
execute positioned ~6 ~-5 ~6 run summon area_effect_cloud ~0.5 ~ ~0.5 {Tags:["lukeAtmey"],Duration:10}
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s facing entity @e[type=area_effect_cloud,tag=lukeAtmey] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=stair_entrance] at @s run tp @s ~ ~ ~ ~180 0
kill @e[type=area_effect_cloud,tag=lukeAtmey]
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=stair_entrance] path 0
execute as @e[type=area_effect_cloud,tag=stair_entrance] store result score @s y run data get entity @s Pos[1]
execute as @e[type=area_effect_cloud,tag=stair_entrance] store result score @s rotation run data get entity @s Rotation[0]
scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,scores={rotation=90}] rotation 1
scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,scores={rotation=180}] rotation 2
scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,scores={rotation=-180}] rotation 2
scoreboard players set @e[type=area_effect_cloud,tag=stair_entrance,scores={rotation=-90}] rotation 3
