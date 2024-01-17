# 预存储
scoreboard players operation @s temp = @s 1_cd11

# 减少冷却
scoreboard players operation @s 1_cd11 -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={1_cd11=..0}] 1_st11 1
scoreboard players add @s[scores={1_cd11=..0,1_st11=..4}] 1_cd11 3000
scoreboard players set @s[scores={1_cd11=..0,1_st11=5..}] 1_cd11 3000

# 检测刷新
tag @s[scores={1_cd11=..3099,1_st11=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 1_cd11
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory