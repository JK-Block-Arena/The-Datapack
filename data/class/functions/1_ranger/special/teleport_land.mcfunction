# 成就
execute as @s[x=1000,y=80,z=1072,dx=100,dy=100,dz=100] if entity @a[tag=projectile_owner,x=1000,y=92,z=1000,dx=100,dy=100,dz=47] run scoreboard players set @a[tag=projectile_owner] hidden_arrow 1

# 具体的处理
execute as @a[tag=projectile_owner] at @s run playsound entity.enderman.teleport player @a
execute as @a[tag=projectile_owner] at @s run particle reverse_portal ~ ~0.8 ~ 0.2 0.6 0.2 0.02 50 normal @a
tp @a[tag=projectile_owner] ~ ~ ~
execute as @a[tag=projectile_owner] at @s run function modules:anti_stuck/sub/player
execute as @a[tag=projectile_owner] at @s run function modules:anti_stuck/sub/reset_fall
execute as @a[tag=projectile_owner] at @s run playsound entity.enderman.teleport player @a
execute as @a[tag=projectile_owner] at @s run particle dragon_breath ~ ~0.8 ~ 0.2 0.6 0.2 0.02 50 normal @a