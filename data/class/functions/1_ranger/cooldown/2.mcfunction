# 预存储
scoreboard players operation @s temp = @s 1_cd21

# 减少冷却
scoreboard players operation @s 1_cd21 -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={1_cd21=..0}] 1_st21 1
execute if score $is_day mem matches 0 run scoreboard players add @s[scores={1_cd21=..0,1_st21=..2}] 1_cd21 15000
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={1_cd21=..0,1_st21=3..}] 1_cd21 15000
execute if score $is_day mem matches 1 run scoreboard players add @s[scores={1_cd21=..0,1_st21=..2}] 1_cd21 25000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={1_cd21=..0,1_st21=3..}] 1_cd21 25000

# 检测刷新
tag @s[scores={1_cd21=..3099,1_st21=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 1_cd21
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory