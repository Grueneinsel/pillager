summon area_effect_cloud ~ ~ ~ {Tags:["new_hallway","hallway","gen"],Duration:1000000}
execute if score @s connection matches 11 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 0
execute if score @s connection matches 7 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 1
execute if score @s connection matches 14 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 2
execute if score @s connection matches 13 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 3
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 3
execute if score @s windows matches 1..4 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 7
tag @e[type=minecraft:area_effect_cloud,tag=new_hallway] remove new_hallway
tag @s remove scan_path
