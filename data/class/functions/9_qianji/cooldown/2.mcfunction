# 预存储
scoreboard players operation @s temp = @s 9_cd2

# 减少冷却
scoreboard players operation @s 9_cd2 -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={9_cd2=..0}] 9_st2 1
scoreboard players add @s[scores={9_cd2=..0,9_st2=..1}] 9_cd2 8000
scoreboard players set @s[scores={9_cd2=..0,9_st2=2..}] 9_cd2 8000

# 检测刷新
tag @s[scores={9_cd2=..3099,9_st2=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 9_cd2
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory