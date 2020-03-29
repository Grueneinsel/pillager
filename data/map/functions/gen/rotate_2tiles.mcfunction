tag @s remove skip
kill @e[type=area_effect_cloud,tag=new_entrance]
scoreboard players add @s count 1
execute if entity @s[scores={count=5,type=0}] run scoreboard players set count 0
execute if entity @s[scores={count=3,type=1}] run scoreboard players set count 0
execute if entity @s[scores={count=2,type=2}] run scoreboard players set count 0
execute if entity @s[scores={count=5,type=3}] run scoreboard players set count 0
execute if entity @s[scores={count=3,type=4}] run scoreboard players set count 0
execute if entity @s[scores={count=0}] run scoreboard players add @s type 1
execute if entity @s[scores={count=0,type=5}] run scoreboard players set @s type 0
execute if entity @s[scores={count=0}] run scoreboard players set @s count 1
scoreboard players add @s flip 1
execute if score @s flip matches 2 run scoreboard players add @s rotation 1
execute if score @s flip matches 2 run scoreboard players set @s flip 0
execute if score @s rotation matches 2 run scoreboard players set @s rotation 0

execute if score @s type matches 0 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"2tiles_0_doors"}
execute if score @s type matches 1 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"2tiles_1_doors"}
execute if score @s type matches 2 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"2tiles_2_doors"}
execute if score @s type matches 3 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"2tiles_3_doors"}
execute if score @s type matches 4 run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"2tiles_4_doors"}

execute if entity @s[tag=2x1,scores={rotation=1,flip=0}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",posX: 24,posZ: 12}
execute if entity @s[tag=2x1,scores={rotation=0,flip=1}] run data merge block ~ ~ ~ {mirror:"FRONT_BACK",posX: 24}
execute if entity @s[tag=2x1,scores={rotation=1,flip=1}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_180",mirror:"FRONT_BACK",posZ: 12}
execute if entity @s[tag=1x2,scores={rotation=0,flip=0}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",posX: 12}
execute if entity @s[tag=1x2,scores={rotation=1,flip=0}] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",posZ: 24}
execute if entity @s[tag=1x2,scores={rotation=0,flip=1}] run data merge block ~ ~ ~ {rotation:"CLOCKWISE_90",mirror:"FRONT_BACK",posX: 12,posZ: 24}
execute if entity @s[tag=1x2,scores={rotation=1,flip=1}] run data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90",mirror:"FRONT_BACK"}

setblock ~1 ~ ~ redstone_block

execute at @e[type=area_effect_cloud,tag=new_entrance] unless block ~ 4 ~ red_concrete at @s run tag @s add skip
#execute if entity @s[tag=skip] run function map:gen/rotate_2tiles
