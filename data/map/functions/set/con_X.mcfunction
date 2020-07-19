summon area_effect_cloud ~ ~ ~ {Tags:["new_hallway","hallway","gen"],Duration:1000000}
scoreboard players set @e[type=minecraft:area_effect_cloud,tag=new_hallway] type 4
scoreboard players set limit random 4
function map:general/seed_random
scoreboard players operation @e[type=minecraft:area_effect_cloud,tag=new_hallway] rotation = random random
tag @e[type=minecraft:area_effect_cloud,tag=new_hallway] remove new_hallway
tag @s remove scan_path
