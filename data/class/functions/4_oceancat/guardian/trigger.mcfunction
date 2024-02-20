# 特效
particle instant_effect ~ ~-0.5 ~ 3 3 3 0 1000
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
playsound entity.dragon_fireball.explode hostile @a ~ ~ ~ 1 1.2

# 召唤
summon marker ~ ~ ~ {Tags:["4_guardian_triggered","new_minion"]}
scoreboard players set @e[tag=new_minion] 4_guardian_life 6

# 设置玩家信息
scoreboard players operation @e[tag=new_minion] player_id = @s player_id
scoreboard players operation @e[tag=new_minion] team = @s team
scoreboard players operation @e[tag=new_minion] statPlayerLevel = @s statPlayerLevel

# 设置触发者信息
execute as @s[team=red] run scoreboard players operation @e[tag=new_minion] player_id_sub = @p[team=!red] player_id
execute as @s[team=blue] run scoreboard players operation @e[tag=new_minion] player_id_sub = @p[team=!blue] player_id
execute as @s[team=green] run scoreboard players operation @e[tag=new_minion] player_id_sub = @p[team=!green] player_id
execute as @s[team=yellow] run scoreboard players operation @e[tag=new_minion] player_id_sub = @p[team=!yellow] player_id
execute as @s[team=red_v1] run scoreboard players operation @e[tag=new_minion] player_id_sub = @p[team=!red_v1] player_id
execute as @s[team=blue_v1] run scoreboard players operation @e[tag=new_minion] player_id_sub = @p[team=!blue_v1] player_id

# 显示触发提示
execute as @a if score @s player_id = @e[tag=new_minion,limit=1] player_id run title @s actionbar {"color":"aqua","text":"❇ 辉煌裂片已被激活"}

# 显示警告
title @a[distance=..10,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 警惕雷暴威胁","bold":true}
execute positioned ~ ~7 ~ run title @a[distance=..9,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 警惕雷暴威胁","bold":true}

# 清理
tag @e remove new_minion
tp @s ~ -100 ~
kill @s