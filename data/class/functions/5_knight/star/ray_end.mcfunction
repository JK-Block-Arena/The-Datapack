scoreboard players set @a[tag=current_ray_owner] 5_star_last 0
scoreboard players remove @a[tag=current_ray_owner] 5_star_storage 1
execute if score $is_day mem matches 1 run scoreboard players set @a[tag=current_ray_owner] 5_star_cd 6000
execute if score $is_day mem matches 0 run scoreboard players set @a[tag=current_ray_owner] 5_star_cd 12000
execute as @a[tag=current_ray_owner] at @s run function class:5_knight/star/update_xpbar