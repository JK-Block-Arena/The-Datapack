playsound minecraft:block.end_gateway.spawn player @a[distance=..50] ~ ~ ~ 1 0.7 0.2
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 force

# 召唤标识
summon minecraft:marker ^ ^ ^-1 {Tags:["3_magic","new"]}

# 设置时间
execute if score @a[tag=current_ray_owner,limit=1] statPlayerLevel matches 1 run scoreboard players set @e[tag=new] 3_magic_last 5
execute if score @a[tag=current_ray_owner,limit=1] statPlayerLevel matches 2..3 run scoreboard players set @e[tag=new] 3_magic_last 4
execute if score @a[tag=current_ray_owner,limit=1] statPlayerLevel matches 4 run scoreboard players set @e[tag=new] 3_magic_last 3

# 设置玩家信息
scoreboard players operation @e[tag=new] player_id = @a[tag=current_ray_owner,limit=1] player_id
scoreboard players operation @e[tag=new] team = @a[tag=current_ray_owner,limit=1] team
tag @e remove new