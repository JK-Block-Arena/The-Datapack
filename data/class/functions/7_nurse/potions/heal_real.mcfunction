# 预存储
scoreboard players operation @s temp = @s 7_heal_cd

# 减少冷却
scoreboard players operation @s 7_heal_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={7_heal_cd=..0}] 7_heal_st 1
execute if score $is_day mem matches 0 run scoreboard players add @s[scores={7_heal_cd=..0,7_heal_st=..1}] 7_heal_cd 20000
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={7_heal_cd=..0,7_heal_st=2..}] 7_heal_cd 20000
execute if score $is_day mem matches 1 run scoreboard players add @s[scores={7_heal_cd=..0,7_heal_st=..1}] 7_heal_cd 10000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={7_heal_cd=..0,7_heal_st=2..}] 7_heal_cd 10000

# 检测刷新
tag @s[scores={7_heal_cd=..3099,7_heal_st=..0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 7_heal_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory