# 劫掠兽版

# 对齐坐标
execute at @s align xyz run tp @s ~ ~ ~
execute if score $track_ray_tp debug matches 1 at @s run particle block_marker chorus_plant ~ ~0.4 ~

# 不被卡方块
execute at @s if block ~ ~1 ~ #modules:air if block ~-1 ~1 ~ #modules:air if block ~ ~1 ~-1 #modules:air if block ~-1 ~1 ~-1 #modules:air run tag @s add safe
execute as @s[tag=!safe] at @s run function modules:anti_stuck/stuck_ravager

# 向上抬升
execute at @s if block ~ ~ ~ #modules:air if block ~-1 ~ ~ #modules:air if block ~ ~ ~-1 #modules:air if block ~-1 ~ ~-1 #modules:air run tag @s add safe2
execute at @s[tag=!safe2] if block ~ ~2 ~ #modules:air if block ~-1 ~2 ~ #modules:air if block ~ ~2 ~-1 #modules:air if block ~-1 ~2 ~-1 #modules:air run tp @s ~ ~1 ~