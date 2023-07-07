# 减少冷却
scoreboard players operation @s temp = @s cd_speed
scoreboard players operation @s temp /= #2 mem
scoreboard players operation @s 3_dash_cd -= @s temp

# 冷却完成
scoreboard players add @s[scores={3_dash_cd=..0}] 3_dash_st 1
scoreboard players add @s[scores={3_dash_cd=..0,3_dash_st=..2}] 3_dash_cd 10000
scoreboard players set @s[scores={3_dash_cd=..0,3_dash_st=3..}] 3_dash_cd 10000

# 持续刷新
execute at @s[scores={state=2..3}] run function class:3_illager/dash/update