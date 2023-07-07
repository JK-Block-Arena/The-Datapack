# 预存储
scoreboard players operation @s temp = @s 10_zombie_cd

# 减少冷却
scoreboard players operation @s 10_zombie_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={10_zombie_cd=..0}] 10_zombie_st 1
execute if score $is_day mem matches 0 run scoreboard players add @s[scores={10_zombie_cd=..0,10_zombie_st=..2}] 10_zombie_cd 15000
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={10_zombie_cd=..0,10_zombie_st=3..}] 10_zombie_cd 15000
execute if score $is_day mem matches 1 run scoreboard players add @s[scores={10_zombie_cd=..0,10_zombie_st=..2}] 10_zombie_cd 25000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={10_zombie_cd=..0,10_zombie_st=3..}] 10_zombie_cd 25000

# 检测刷新
tag @s[scores={10_zombie_cd=..3099,10_zombie_st=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 10_zombie_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory