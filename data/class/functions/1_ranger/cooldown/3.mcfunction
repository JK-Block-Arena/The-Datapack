# 预存储
scoreboard players operation @s temp = @s 1_cd31

# 减少冷却
scoreboard players operation @s 1_cd31 -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={1_cd31=..0}] 1_st31 1
execute if score $is_day mem matches 0 run scoreboard players add @s[scores={1_cd31=..0,1_st31=..1}] 1_cd31 25000
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={1_cd31=..0,1_st31=2..}] 1_cd31 25000
execute if score $is_day mem matches 1 run scoreboard players add @s[scores={1_cd31=..0,1_st31=..1}] 1_cd31 15000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={1_cd31=..0,1_st31=2..}] 1_cd31 15000

# 检测刷新
tag @s[scores={1_cd31=..3099,1_st31=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 1_cd31
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory