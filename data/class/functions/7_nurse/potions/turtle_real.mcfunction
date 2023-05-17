# 预存储
scoreboard players operation @s temp = @s 7_turtle_cd

# 减少冷却
scoreboard players operation @s 7_turtle_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={7_turtle_cd=..0}] 7_turtle_storage 1
execute unless score $mutation mem matches 4 run scoreboard players set @s[scores={7_turtle_cd=..0}] 7_turtle_cd 20000
execute if score $mutation mem matches 4 run scoreboard players set @s[scores={7_turtle_cd=..0}] 7_turtle_cd 40000
# 检测刷新
tag @s[scores={7_turtle_cd=..3099,7_turtle_storage=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 7_turtle_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory