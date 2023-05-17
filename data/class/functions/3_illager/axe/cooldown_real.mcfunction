# 预存储
scoreboard players operation @s temp = @s 3_axe_cd

# 减少冷却
scoreboard players operation @s 3_axe_cd -= @s cd_speed

# 冷却完成
tag @s[scores={3_axe_cd=..0}] add refresh_inventory
scoreboard players add @s[scores={3_axe_cd=..0}] 3_axe_storage 1
scoreboard players set @s[scores={3_axe_cd=..0}] 3_axe_cd 5000

# 检测刷新
tag @s[scores={3_axe_cd=..3099,3_axe_storage=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 3_axe_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory

# 持续刷新
execute at @s[scores={state=2..4,class=3}] run function class:3_illager/axe/cooldown_update