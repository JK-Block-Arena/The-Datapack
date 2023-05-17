scoreboard players add @s cd_speed 10000
playsound block.beacon.power_select player @s 0 100000 0 1 2 0.8
execute at @s anchored eyes run particle minecraft:dust 10 0 0 1.2 ^ ^ ^0.2 0.35 0.35 0.35 0 20 normal @s

scoreboard players add @p[tag=mino_murder] cd_speed 10000
playsound block.beacon.power_select player @p[tag=mino_murder] 0 100000 0 1 2 0.8
execute as @p[tag=mino_murder] at @s anchored eyes run particle minecraft:dust 10 0 0 1.2 ^ ^ ^0.2 0.35 0.35 0.35 0 20 normal @s