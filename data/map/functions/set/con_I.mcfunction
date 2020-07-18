summon area_effect_cloud ~ ~ ~ {Tags:["new_hallway","hallway","gen"],Duration:1000000}
execute if score @s connection matches 5 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 0
execute if score @s connection matches 10 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 1
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 2
execute if score @s windows matches 1..4 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 6
execute if score @s windows matches 2 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 2
execute if score @s windows matches 3 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 3
tag @s remove scan_path
