# 预存储
scoreboard players operation @s temp = @s 5_star_cd

# 减少冷却
scoreboard players operation @s 5_star_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={5_star_cd=..0}] 5_star_storage 1
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={5_star_cd=..0}] 5_star_cd 6000
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={5_star_cd=..0}] 5_star_cd 12000

# 检测刷新
tag @s[scores={5_star_cd=..3099,5_star_storage=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 5_star_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory