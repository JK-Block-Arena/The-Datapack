# 预存储
scoreboard players operation @s temp = @s 9_cd4

# 减少冷却
scoreboard players operation @s 9_cd4 -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={9_cd4=..0}] 9_st4 1
scoreboard players set @s[scores={9_cd4=..0}] 9_cd4 15000

# 检测刷新
tag @s[scores={9_cd4=..3099,9_st4=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 9_cd4
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory