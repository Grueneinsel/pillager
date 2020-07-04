tellraw @a [{"text":"Error occurred! Seed: ","color":"red"},{"score":{"name":"start_seed","objective":"random"},"color":"red"}]
scoreboard players set reset count 3
scoreboard players set loops count 5
scoreboard players operation seed random = start_seed random
setblock -6 5 -9 minecraft:redstone_block
