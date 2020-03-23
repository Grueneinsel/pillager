##Gamerules
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doTraderSpawning false
gamerule randomTickSpeed 0
gamerule spawnRadius 0
setworldspawn 0 0 0
time set noon
setblock 0 1 1 minecraft:comparator
setblock 0 0 1 minecraft:bedrock
setblock 0 1 0 minecraft:dispenser

##Scoreboards
scoreboard objectives add join_game dummy
scoreboard objectives add int dummy
scoreboard objectives add count dummy
scoreboard players set -1 int -1
scoreboard players set 1 int 1
scoreboard players set 2 int 2
scoreboard players set 3 int 3
scoreboard players set 4 int 4
scoreboard players set 5 int 5
scoreboard players set 10 int 10
scoreboard players set 64 int 64
scoreboard players set 4096 int 4096
scoreboard players set 262144 int 262144
scoreboard players set 16777216 int 16777216
scoreboard players set 1073741824 int 1073741824
scoreboard players set 100 int 100
scoreboard players set 360 int 360
scoreboard objectives add random dummy
scoreboard objectives add cos_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add rotation dummy
scoreboard objectives add id dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
