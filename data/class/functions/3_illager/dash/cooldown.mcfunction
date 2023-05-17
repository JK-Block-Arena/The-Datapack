# 减少冷却
scoreboard players operation @s temp = @s cd_speed
scoreboard players operation @s temp /= #2 mem
scoreboard players operation @s 3_dash_cooldown -= @s temp

# 冷却完成
scoreboard players add @s[scores={3_dash_cooldown=..0}] 3_dash_storage 1
scoreboard players add @s[scores={3_dash_cooldown=..0,3_dash_storage=..2}] 3_dash_cooldown 10000
scoreboard players set @s[scores={3_dash_cooldown=..0,3_dash_storage=3..}] 3_dash_cooldown 10000

# 持续刷新
execute at @s[scores={state=2..4}] run function class:3_illager/dash/update