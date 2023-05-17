# 预存储
scoreboard players operation @s temp = @s 7_damage_cd

# 减少冷却
scoreboard players operation @s 7_damage_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={7_damage_cd=..0}] 7_damage_storage 1

execute unless score $mutation mem matches 4 run scoreboard players add @s[scores={7_damage_cd=..0,7_damage_storage=..1}] 7_damage_cd 20000
execute unless score $mutation mem matches 4 run scoreboard players set @s[scores={7_damage_cd=..0,7_damage_storage=2..}] 7_damage_cd 20000
# 冷却时间加倍
execute if score $mutation mem matches 4 run scoreboard players add @s[scores={7_damage_cd=..0,7_damage_storage=..1}] 7_damage_cd 40000
execute if score $mutation mem matches 4 run scoreboard players set @s[scores={7_damage_cd=..0,7_damage_storage=2..}] 7_damage_cd 40000

# 检测刷新
tag @s[scores={7_damage_cd=..3099,7_damage_storage=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 7_damage_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory