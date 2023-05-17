# 命中队友召唤物
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=lobby] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=lobby] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_minion
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=red] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=red] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_minion
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=blue] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=blue] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_minion
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=green] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=green] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_minion
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=yellow] as @e[tag=current_ray,tag=hit_friend] at @s run function modules:ray/on_hit_anything
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=yellow] if entity @e[tag=current_ray,tag=hit_friend] run function modules:ray/events/hit_minion

# 命中敌人召唤物
execute as @s[team=] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_minion
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=!lobby] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=lobby] if entity @a[tag=current_ray_owner,team=!lobby] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_minion
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=!red] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=red] if entity @a[tag=current_ray_owner,team=!red] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_minion
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=!blue] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=blue] if entity @a[tag=current_ray_owner,team=!blue] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_minion
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=!green] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=green] if entity @a[tag=current_ray_owner,team=!green] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_minion
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=!yellow] as @e[tag=current_ray,tag=hit_enemy] at @s run function modules:ray/on_hit_anything
execute as @s[team=yellow] if entity @a[tag=current_ray_owner,team=!yellow] if entity @e[tag=current_ray,tag=hit_enemy] run function modules:ray/events/hit_minion
