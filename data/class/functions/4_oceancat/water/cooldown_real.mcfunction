# 预存储
scoreboard players operation @s temp = @s 4_water_cd

# 减少冷却
scoreboard players operation @s 4_water_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={4_water_cd=..0}] 4_water_st 1
scoreboard players add @s[scores={4_water_cd=..0,4_water_st=..1}] 4_water_cd 20000
scoreboard players set @s[scores={4_water_cd=..0,4_water_st=2..}] 4_water_cd 20000

# 检测刷新
tag @s[scores={4_water_cd=..3099,4_water_st=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 4_water_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory
