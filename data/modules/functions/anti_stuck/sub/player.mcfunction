# 在传送后简单地防止被卡方块

# 对齐坐标
execute at @s align xyz positioned ~0.5 ~0.01 ~0.5 run tp @s ~ ~ ~
execute if score $track_ray_tp debug matches 1 at @s run particle block_marker red_wool ~0.05 ~0.45 ~0.05

# 击中平台侧面时，移动到平台正上方，而不是从侧面摔下去
execute at @s if block ~ ~1 ~ #modules:air if block ~ ~-1 ~ #modules:air_or_harmful if block ~ ~-2 ~ #modules:air_or_harmful run function modules:anti_stuck/check_platform

# 不被卡方块
tag @s remove safe
execute at @s unless block ~ ~-1 ~ #modules:harmful if block ~ ~ ~ #modules:air if block ~ ~1 ~ #modules:air run tag @s add safe
execute as @s[tag=!safe] at @s run function modules:anti_stuck/stuck_player

# 减少摔落
execute at @s if block ~ ~-1 ~ #modules:air unless block ~ ~-1 ~ #modules:harmful run tp @s ~ ~-1 ~
execute unless score @s statPlayerLevel matches 4 at @s if block ~ ~-1 ~ #modules:air unless block ~ ~-1 ~ #modules:harmful run tp @s ~ ~-1 ~
execute if score @s statPlayerLevel matches 1 at @s if block ~ ~-1 ~ #modules:air unless block ~ ~-1 ~ #modules:harmful run tp @s ~ ~-1 ~

execute if score $track_ray_tp debug matches 1 at @s run particle block_marker green_wool ~-0.05 ~0.35 ~-0.05