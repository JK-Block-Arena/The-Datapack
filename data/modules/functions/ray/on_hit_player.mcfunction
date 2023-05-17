# 命中队友
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=lobby] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=lobby] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_friend
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=red] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=red] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_friend
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=blue] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=blue] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_friend
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=green] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=green] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_friend
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=yellow] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=yellow] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_friend

# 命中敌人
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=!lobby] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=!lobby] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_enemy
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=!red] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=!red] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_enemy
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=!blue] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=!blue] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_enemy
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=!green] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=!green] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_enemy
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=!yellow] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=!yellow] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_enemy
