# 标记当前射线与射线主人
tag @s add current_ray
execute as @a if score @s player_id = @e[tag=current_ray,limit=1] player_id run tag @s add current_ray_owner

# 射线移动
scoreboard players operation @s ray_speed_left += @s ray_speed
execute as @s[scores={ray_precise=1,ray_speed_left=1..}] run function modules:ray/move_1
execute as @s[scores={ray_precise=2,ray_speed_left=2..}] run function modules:ray/move_2
execute as @s[scores={ray_precise=4,ray_speed_left=4..}] run function modules:ray/move_4
execute as @s[scores={ray_precise=10,ray_speed_left=10..}] run function modules:ray/move_10

# 消灭射线前触发未命中事件
execute as @s[tag=ray_end,tag=!hited] run function modules:ray/events/hit_nothing

# 消灭射线
kill @s[tag=ray_end]

# 清理 Tag
tag @s remove current_ray
tag @a remove current_ray_owner