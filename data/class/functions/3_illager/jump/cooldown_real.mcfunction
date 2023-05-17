# 预存储
scoreboard players operation @s temp = @s 3_jump_cd

# 减少冷却
scoreboard players operation @s 3_jump_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={3_jump_cd=..0}] 3_jump_storage 1
scoreboard players add @s[scores={3_jump_cd=..0,3_jump_storage=..1}] 3_jump_cd 20000
scoreboard players set @s[scores={3_jump_cd=..0,3_jump_storage=2..}] 3_jump_cd 20000

# 检测刷新
tag @s[scores={3_jump_cd=..3099,3_jump_storage=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 3_jump_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory
