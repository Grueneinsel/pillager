execute unless block ~ ~ ~ blue_concrete run setblock ~ ~ ~ birch_planks
scoreboard players add @s[tag=!straight] turn 2
scoreboard players add @s[tag=straight] turn 1
scoreboard players add @s[tag=turn_right] rotation 1
scoreboard players remove @s[tag=turn_left] rotation 1
scoreboard players set @s[tag=turn_left,scores={rotation=-1}] rotation 3
scoreboard players set @s[tag=turn_right,scores={rotation=4}] rotation 0
tag @s remove latest_connection
