# 效果
function modules:ray/sub/run

# 设置tag
tag @e[tag=new_ray] add hit_friend
tag @e[tag=new_ray] add hit_enemy
tag @e[tag=new_ray] add hit_minion
tag @e[tag=new_ray] add hit_block

# 设置参数
scoreboard players set @e[tag=new_ray] ray_id 201
scoreboard players set @e[tag=new_ray] ray_distance 1500
execute if score @s statPlayerLevel matches 1 run scoreboard players set @e[tag=new_ray] ray_speed 110
execute if score @s statPlayerLevel matches 2 run scoreboard players set @e[tag=new_ray] ray_speed 95
execute if score @s statPlayerLevel matches 3 run scoreboard players set @e[tag=new_ray] ray_speed 80
execute if score @s statPlayerLevel matches 4 run scoreboard players set @e[tag=new_ray] ray_speed 60
scoreboard players set @e[tag=new_ray] ray_precise 4

# 完成召唤
tag @e[tag=new_ray] remove new_ray

# 失败的珍珠尝试
#tag @e[type=ender_pearl,sort=nearest,limit=1] add target
#tag @s add target
#execute as @e[tag=target] at @s run summon ender_pearl ~ ~ ~ {Tags:["summon_target","2_pearl"],NoGravity:true,Item:{id:"minecraft:ender_pearl",Count:1}}
#data modify entity @e[tag=summon_target,limit=1] Motion set from entity @e[tag=target,limit=1] Motion
#data modify entity @e[tag=summon_target,limit=1] Rotation set from entity @e[tag=target,limit=1] Rotation
#data merge entity @e[tag=target,limit=1] {NoGravity:true,Owner:[I;0,0,0,0]}
#kill @e[tag=target]

# 减少珍珠
scoreboard players remove @s 2_pearl_st 1
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={2_pearl_st=1}] 2_pearl_cd 12000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={2_pearl_st=1}] 2_pearl_cd 18000
kill @e[type=ender_pearl,sort=nearest,limit=1]

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
