# 预存储
scoreboard players operation @s temp = @s 7_heal_cd

# 减少冷却
scoreboard players operation @s 7_heal_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={7_heal_cd=..0}] 7_heal_storage 1

execute unless score $mutation mem matches 4 run scoreboard players add @s[scores={7_heal_cd=..0,7_heal_storage=..1}] 7_heal_cd 15000
execute unless score $mutation mem matches 4 run scoreboard players set @s[scores={7_heal_cd=..0,7_heal_storage=2..}] 7_heal_cd 15000
# 冷却时间加倍
execute if score $mutation mem matches 4 run scoreboard players add @s[scores={7_heal_cd=..0,7_heal_storage=..1}] 7_heal_cd 30000
execute if score $mutation mem matches 4 run scoreboard players set @s[scores={7_heal_cd=..0,7_heal_storage=2..}] 7_heal_cd 30000

# 检测刷新
tag @s[scores={7_heal_cd=..3099,7_heal_storage=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 7_heal_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory