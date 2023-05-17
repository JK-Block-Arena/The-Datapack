# 移动射线
tp @s ^ ^ ^0.4
scoreboard players remove @s ray_speed_left 4
scoreboard players remove @s ray_distance 4

# 调用移动判断核心
execute at @s run function modules:ray/move_core

# 若还可以继续移动，那就接着动
execute as @s[tag=!ray_end,scores={ray_speed_left=4..}] at @s run function modules:ray/move_4
