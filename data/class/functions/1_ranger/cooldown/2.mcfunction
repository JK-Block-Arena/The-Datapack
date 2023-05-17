# 预存储
scoreboard players operation @s temp = @s 1_cd21

# 减少冷却
scoreboard players operation @s 1_cd21 -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={1_cd21=..0}] 1_st21 1
scoreboard players add @s[scores={1_cd21=..0,1_st21=..1}] 1_cd21 20000
scoreboard players set @s[scores={1_cd21=..0,1_st21=2..}] 1_cd21 20000

# 检测刷新
tag @s[scores={1_cd21=..3099,1_st21=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 1_cd21
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory