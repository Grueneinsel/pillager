#execute at @e[tag=2x2] run fill ~ ~ ~ ~24 ~ ~24 air
#execute at @e[tag=1x2] run fill ~ ~ ~ ~12 ~ ~24 air
#execute at @e[tag=2x1] run fill ~ ~ ~ ~24 ~ ~12 air
#execute at @e[tag=connection] run setblock ~ ~ ~ air
#kill @e[tag=gen]
tellraw @a [{"text":"Error occurred! Seed: ","color":"red"},{"score":{"name":"start_seed","objective":"random"},"color":"red"}]
scoreboard players set reset count 3
scoreboard players set loops count 5
scoreboard players operation seed random = start_seed random
setblock -6 5 -9 minecraft:redstone_block
