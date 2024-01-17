# 预存储
scoreboard players operation @s temp = @s 11_totem_cd

# 减少冷却
scoreboard players operation @s 11_totem_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={11_totem_cd=..0}] 11_totem_st 1
scoreboard players add @s[scores={11_totem_cd=..0,11_totem_st=..1}] 11_totem_cd 40000
scoreboard players set @s[scores={11_totem_cd=..0,11_totem_st=2..}] 11_totem_cd 40000

# 检测刷新
tag @s[scores={11_totem_cd=..3099,11_totem_st=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 11_totem_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory
