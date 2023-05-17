# 生成射线
function modules:ray/sub/run
#tp @e[tag=new_ray] ~ ~ ~ ~ ~
scoreboard players set @e[tag=new_ray] ray_id 801
scoreboard players set @e[tag=new_ray] ray_speed 20
scoreboard players set @e[tag=new_ray] ray_precise 10
scoreboard players set @e[tag=new_ray] ray_distance 300
tag @e[tag=new_ray] remove new_ray

function modules:ray/sub/run
tp @e[tag=new_ray] ^1 ^0.8 ^
scoreboard players set @e[tag=new_ray] ray_id 801
scoreboard players set @e[tag=new_ray] ray_speed 20
scoreboard players set @e[tag=new_ray] ray_precise 10
scoreboard players set @e[tag=new_ray] ray_distance 300
tag @e[tag=new_ray] remove new_ray

function modules:ray/sub/run
tp @e[tag=new_ray] ^-1 ^0.8 ^
scoreboard players set @e[tag=new_ray] ray_id 801
scoreboard players set @e[tag=new_ray] ray_speed 20
scoreboard players set @e[tag=new_ray] ray_precise 10
scoreboard players set @e[tag=new_ray] ray_distance 300
tag @e[tag=new_ray] remove new_ray

# tp机制
execute as @s[scores={8_pierce_tp=1}] run function class:8_jiazi/pierce/tp_user

# 特效
playsound minecraft:entity.evoker.prepare_summon player @a[distance=..8] ~ ~ ~ 0.5 0.8 0.8
particle witch ~ ~1 ~ 0.1 0.3 0.1 0.01 10 normal @a[distance=.1..]

# 计时
scoreboard players set @s[scores={8_fangs_last=..80}] 8_fangs_last 80

# 移除储存
scoreboard players remove @s 8_pierce_storage 1

# 刷新物品&打断回血
tag @s add brRegenBreak
tag @s add refresh_inventory
