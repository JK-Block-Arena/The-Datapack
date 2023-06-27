# 玩家状态 1：重生中
scoreboard players set @s state 1
tag @s remove bad_guy
# 重置位置与状态
function modules:map/sub/respawn
function class:modules/reset_modifiers
effect clear @s
title @s clear
xp set @s 0 points
xp set @s 0 levels

# 去除部分提示
scoreboard players set @s tip_battle_delay 0
tag @s remove tip_1_regen

# 重置物品栏
function pvp:state/respawn/refresh_inventory

# 停止心跳音效
stopsound @s * minecraft:block.conduit.ambient

# 开始重生
execute if score $skill_respawn debug matches 0 run scoreboard players set @s respawn_time 23
execute if score $skill_respawn debug matches 1 run scoreboard players set @s respawn_time 11
execute if score $skill_respawn debug matches 2 run scoreboard players set @s respawn_time 2
execute if score $mutation mem matches 10 run scoreboard players set @s respawn_time 11
scoreboard players set @s[scores={team=5..6}] respawn_time 11
execute as @s[scores={team=5}] run scoreboard players add #1v1_blue mem 1
execute as @s[scores={team=6}] run scoreboard players add #1v1_red mem 1
function pvp:state/respawn/tick8