# 预存储
scoreboard players operation @s temp = @s 9_cd1

# 减少冷却
scoreboard players operation @s 9_cd1 -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={9_cd1=..0}] 9_st1 1
scoreboard players add @s[scores={9_cd1=..0,9_st1=..3}] 9_cd1 5000
scoreboard players set @s[scores={9_cd1=..0,9_st1=4..}] 9_cd1 5000

# 检测刷新
tag @s[scores={9_cd1=..3099,9_st1=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 9_cd1
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory