# 预存储
scoreboard players operation @s temp = @s 6_drop_cd

# 减少冷却
scoreboard players operation @s 6_drop_cd -= @s cd_speed

# 检测刷新
tag @s[scores={6_drop_cd=..3099,6_mint_st=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 6_drop_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory