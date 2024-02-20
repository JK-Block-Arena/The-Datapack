# 起点特效
execute as @a[tag=current_ray_owner] at @s run particle reverse_portal ~ ~0.8 ~ 0.2 0.6 0.2 0.05 100 normal @a
execute as @a[tag=current_ray_owner] at @s run playsound entity.enderman.teleport player @a[distance=..8] ~ ~ ~ 0.5 0.7

# 传送
execute at @s run tp @s ^ ^ ^-0.4
execute at @s run tp @a[tag=current_ray_owner] @s
execute at @s run tp @s ^ ^ ^0.4
execute as @a[tag=current_ray_owner] at @s run function modules:anti_stuck/sub/player
execute as @a[tag=current_ray_owner] at @s run function modules:anti_stuck/sub/reset_fall

# 终点特效
playsound entity.enderman.teleport player @a
execute as @a[tag=current_ray_owner] at @s run playsound entity.enderman.teleport player @s 0 1000000 0 1000000
execute as @a[tag=current_ray_owner,scores={statPlayerLevel=1}] at @s run playsound entity.enderman.teleport player @a[distance=..4] ~ ~ ~ 0.25 1.1
execute as @a[tag=current_ray_owner,scores={statPlayerLevel=2..3}] at @s run playsound entity.enderman.teleport player @a[distance=..6] ~ ~ ~ 0.375 1.1
execute as @a[tag=current_ray_owner,scores={statPlayerLevel=4}] at @s run playsound entity.enderman.teleport player @a[distance=..8] ~ ~ ~ 0.5 1.1