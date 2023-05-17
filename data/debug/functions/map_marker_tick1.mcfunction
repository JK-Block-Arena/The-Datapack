# 地图 marker 可视化
execute as @e[tag=map_marker] at @s unless entity @a[distance=..20] run particle minecraft:cloud ~ ~1 ~ 0.25 0.5 0.25 0 2 force @a
execute as @e[tag=map_marker] at @s if entity @a[distance=..20] run particle minecraft:heart ~ ~0.6 ~ 0.1 0.3 0.1 0 2 force @a
execute as @e[tag=map_marker] at @s positioned ^ ^ ^0.5 run particle minecraft:flame ~ ~1.5 ~ 0.1 0.1 0.1 0 1 force @a
execute as @e[tag=map_marker] at @s positioned ^ ^ ^1 run particle minecraft:flame ~ ~1.5 ~ 0.1 0.1 0.1 0 1 force @a
execute as @e[tag=map_marker] at @s positioned ~ 64 ~ run particle minecraft:heart ~ ~ ~ 2 0 2 0 4 force @a
