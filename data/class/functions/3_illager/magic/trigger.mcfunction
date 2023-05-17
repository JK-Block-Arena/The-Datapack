function modules:ray/sub/run
playsound minecraft:entity.ender_dragon.shoot player @a ~ ~ ~ 1 0.6

# 设置tag
tag @e[tag=new_ray] add hit_block
tag @e[tag=new_ray] add hit_enemy
tag @e[tag=new_ray] add hit_friend
tag @e[tag=new_ray] add hit_minion

# 设置参数
scoreboard players set @e[tag=new_ray] ray_id 302
execute if score @s statPlayerLevel matches 1 run scoreboard players set @e[tag=new_ray] ray_distance 430
execute if score @s statPlayerLevel matches 2 run scoreboard players set @e[tag=new_ray] ray_distance 405
execute if score @s statPlayerLevel matches 3 run scoreboard players set @e[tag=new_ray] ray_distance 385
execute if score @s statPlayerLevel matches 4 run scoreboard players set @e[tag=new_ray] ray_distance 360
execute if score @s statPlayerLevel matches 1 run scoreboard players set @e[tag=new_ray] ray_speed 34
execute if score @s statPlayerLevel matches 2 run scoreboard players set @e[tag=new_ray] ray_speed 31
execute if score @s statPlayerLevel matches 3 run scoreboard players set @e[tag=new_ray] ray_speed 29
execute if score @s statPlayerLevel matches 4 run scoreboard players set @e[tag=new_ray] ray_speed 26
scoreboard players set @e[tag=new_ray] ray_precise 4

# 完成召唤
tag @e[tag=new_ray] remove new_ray

# 减少存储
scoreboard players remove @s 3_magic_storage 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
