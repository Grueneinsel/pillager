fill 0 1 0 0 1 2 air
setblock 0 1 0 dispenser{LootTable:"map:get_seed"}
execute store result block 0 1 0 LootTableSeed long 1 run scoreboard players get seed random
setblock 0 1 1 minecraft:comparator
setblock 0 1 2 stone
execute store result score seed random run data get block 0 1 0 Items[{id:"minecraft:oak_planks"}].Count
scoreboard players operation seed random -= 1 int
execute store result score get random run data get block 0 1 0 Items[{id:"minecraft:stone"}].Count
scoreboard players operation get random -= 1 int
scoreboard players operation get random *= 64 int
scoreboard players operation seed random += get random
execute store result score get random run data get block 0 1 0 Items[{id:"minecraft:iron_ingot"}].Count
scoreboard players operation get random -= 1 int
scoreboard players operation get random *= 4096 int
scoreboard players operation seed random += get random
execute store result score get random run data get block 0 1 0 Items[{id:"minecraft:gold_ingot"}].Count
scoreboard players operation get random -= 1 int
scoreboard players operation get random *= 262144 int
scoreboard players operation seed random += get random
execute store result score get random run data get block 0 1 0 Items[{id:"minecraft:diamond"}].Count
scoreboard players operation get random -= 1 int
scoreboard players operation get random *= 16777216 int
scoreboard players operation seed random += get random
execute store result score get random run data get block 0 1 0 Items[{id:"minecraft:emerald"}].Count
scoreboard players operation get random -= 1 int
scoreboard players operation get random *= 1073741824 int
scoreboard players operation seed random += get random
scoreboard players reset get random
execute if score seed random matches 0 run scoreboard players set seed random 1
scoreboard players operation random random = seed random
scoreboard players operation random random %= limit random
