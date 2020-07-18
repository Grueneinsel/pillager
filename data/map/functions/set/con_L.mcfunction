summon area_effect_cloud ~ ~ ~ {Tags:["new_hallway","hallway","gen"],Duration:1000000}
execute if score @s connection matches 3 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 0
execute if score @s connection matches 6 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 1
execute if score @s connection matches 12 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 2
execute if score @s connection matches 9 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 3
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 1
execute if score @s windows matches 1..4 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 5
execute if score @e[type=minecraft:area_effect_cloud,tag=new_hallway,scores={type=5}] unless score @e[type=minecraft:area_effect_cloud,tag=new_hallway,limit=1] rotation = @s windows run tag @e[type=minecraft:area_effect_cloud,tag=new_hallway] add mirror
execute if entity @e[type=minecraft:area_effect_cloud,tag=new_hallway,scores={type=5}] if entity @s[scores={windows=4,connection=3}] run tag @e[type=minecraft:area_effect_cloud,tag=new_hallway] remove mirror
execute if score @s windows matches 5..8 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 8
tag @e[type=minecraft:area_effect_cloud,tag=new_hallway] remove new_hallway
tag @s remove scan_path
