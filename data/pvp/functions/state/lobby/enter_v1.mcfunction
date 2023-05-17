# 1v1死亡处理
# 玩家状态 0：大厅中
scoreboard players set @s state 0
# 重置位置与状态
tp @s[team=red_v1] 0.5 11.5 -14.5 -90 0
tp @s[team=blue_v1] 4.5 11.5 -14.5 90 0
attribute @s minecraft:generic.max_health base set 20
effect clear @s
title @s clear
gamemode adventure
xp set @s 0 points
xp set @s 0 levels
function modules:anti_stuck/sub/reset_fall
function class:modules/reset_modifiers

# 重置伤害信息
function modules:mino2/sub/forgive

# 重置物品栏与队伍
function modules:update_bossbar
clear @s
function pvp:state/lobby/refresh_inventory