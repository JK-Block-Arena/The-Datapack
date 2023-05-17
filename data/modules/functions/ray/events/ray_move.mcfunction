# 当射线每次发生中途位移时触发，可以用于释放粒子
execute if score $track_ray_move debug matches 1 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 2

execute as @s[scores={ray_id=201}] run particle reverse_portal ~ ~ ~ 0.25 0.25 0.25 0.04 1
execute as @s[scores={ray_id=302}] run particle campfire_cosy_smoke ~ ~ ~ 0.2 0.2 0.2 0 1
execute as @s[scores={ray_id=502}] run function class:5_knight/star/ray_move
execute as @s[scores={ray_id=801}] run function class:8_jiazi/pierce/ray_move
