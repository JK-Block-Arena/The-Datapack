# 预存储
scoreboard players operation @s temp = @s 11_fireball_cd

# 减少冷却
scoreboard players operation @s 11_fireball_cd -= @s cd_speed

# 冷却完成
scoreboard players add @s[scores={11_fireball_cd=..0}] 11_fireball_st 1
execute if score $is_day mem matches 1 run scoreboard players add @s[scores={11_fireball_cd=..0,11_fireball_st=..1}] 11_fireball_cd 12000
execute if score $is_day mem matches 1 run scoreboard players set @s[scores={11_fireball_cd=..0,11_fireball_st=2..}] 11_fireball_cd 12000
execute if score $is_day mem matches 0 run scoreboard players add @s[scores={11_fireball_cd=..0,11_fireball_st=..1}] 11_fireball_cd 10000
execute if score $is_day mem matches 0 run scoreboard players set @s[scores={11_fireball_cd=..0,11_fireball_st=2..}] 11_fireball_cd 10000

# 检测刷新
tag @s[scores={11_fireball_cd=..3099,11_fireball_st=0}] add refresh_inventory
scoreboard players operation @s temp /= #1000 mem
scoreboard players operation #now temp = @s 11_fireball_cd
scoreboard players operation #now temp /= #1000 mem
execute unless score @s temp = #now temp run tag @s add refresh_inventory
