# 预存储
scoreboard players operation @s temp = @s 2_sneak_cd

# 减少冷却
scoreboard players operation @s 2_sneak_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={2_sneak_cd=..0}] 2_sneak_storage 1
execute if score $is_day mem matches 0 run scoreboard players add @s[scores={2_sneak_cd=..0,2_sneak_storage=..0}] 2_sneak_cd 9000
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={2_sneak_cd=..0,2_sneak_storage=1..}] 2_sneak_cd 9000
execute if score $is_day mem matches 1 run scoreboard players add @s[scores={2_sneak_cd=..0,2_sneak_storage=..0}] 2_sneak_cd 18000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={2_sneak_cd=..0,2_sneak_storage=1..}] 2_sneak_cd 18000

# 检测刷新
tag @s[scores={2_sneak_cd=..3099,2_sneak_storage=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 2_sneak_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory