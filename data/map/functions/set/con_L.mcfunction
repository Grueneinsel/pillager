summon area_effect_cloud ~ ~ ~ {Tags:["new_hallway","hallway","gen"],Duration:1000000}
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=new_hallway,limit=1] rotation = @s connection
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=new_hallway,limit=1] rotation %= 3 int
execute if score @s connection matches 9 run scoreboard players add @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 1
execute if score @s connection matches 12 run scoreboard players remove @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation 1
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 1
execute if score @s windows matches 1..4 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 5
execute if score @e[type=minecraft:area_effect_cloud,tag=new_hallway,scores={type=5}] unless score @e[type=minecraft:area_effect_cloud,tag=new_hallway,limit=1] rotation = @s windows run tag @e[type=minecraft:area_effect_cloud,tag=new_hallway] add mirror
execute if entity @e[type=minecraft:area_effect_cloud,tag=new_hallway,scores={type=5}] if entity @s[scores={windows=0,connection=3}] run tag @e[type=minecraft:area_effect_cloud,tag=new_hallway] remove mirror
execute if score @s windows matches 5..8 run scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 8
tag @s remove scan_path
