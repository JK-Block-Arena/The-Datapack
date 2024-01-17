function modules:ray/sub/run
playsound minecraft:entity.ender_dragon.shoot player @a ~ ~ ~ 1 2

# 设置tag
# 无
# 设置参数
scoreboard players set @e[tag=new_ray] ray_id 502
scoreboard players set @e[tag=new_ray] ray_speed 20
scoreboard players set @e[tag=new_ray] ray_precise 4
# 这个没用 ↓
scoreboard players set @e[tag=new_ray] ray_distance 2000

# 计时
scoreboard players set @s 5_star_last 80
scoreboard players set @e[tag=new_ray] 5_star_last 40
function class:5_knight/star/update_xpbar

# 完成召唤
tag @e[tag=new_ray] remove new_ray

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory

# 成就
scoreboard players set @s[x=-1943.5,y=40.0,z=-1960.5,distance=..2,x_rotation=-90..-50] hidden_star 1
scoreboard players set @s[x=7040.5,y=56.0,z=6954.5,distance=..2,x_rotation=-90..-50] hidden_star 1

execute if score $mutation mem matches 8 run effect give @s[scores={state=2,team=1..4}] glowing 3