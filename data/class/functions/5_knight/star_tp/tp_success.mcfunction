
# 起点特效
execute as @a[tag=current_ray_owner] at @s run particle minecraft:wax_off ~ ~0.8 ~ 0.2 0.6 0.2 0.05 50 normal @a
execute as @a[tag=current_ray_owner] at @s run playsound entity.enderman.teleport player @a[distance=..8] ~ ~ ~ 0.5 0.7

# 传送
execute at @e[tag=tp_test,limit=1] run tp @a[tag=current_ray_owner] ~ ~ ~
execute as @a[tag=current_ray_owner] at @s run function modules:anti_stuck/sub/reset_fall

# 终点特效
execute as @a[tag=current_ray_owner] at @s run particle minecraft:wax_off ~ ~0.8 ~ 0.2 0.6 0.2 0.05 50 normal @a
execute as @a[tag=current_ray_owner] at @s run playsound entity.enderman.teleport player @a
execute as @a[tag=current_ray_owner,scores={statPlayerLevel=1}] at @s run playsound entity.enderman.teleport player @a[distance=..4] ~ ~ ~ 0.25 1.1
execute as @a[tag=current_ray_owner,scores={statPlayerLevel=2..3}] at @s run playsound entity.enderman.teleport player @a[distance=..6] ~ ~ ~ 0.375 1.1
execute as @a[tag=current_ray_owner,scores={statPlayerLevel=4}] at @s run playsound entity.enderman.teleport player @a[distance=..8] ~ ~ ~ 0.5 1.1

# 清理射线
tag @s add ray_end