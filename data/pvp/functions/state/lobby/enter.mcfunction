# 玩家状态 0：大厅中
scoreboard players set @s state 0
# 重置位置与状态
tp @s[x=18,y=235,z=-2,distance=..5] 14 235 2
tp @s[scores={tip_0_tutorial=7..},x=8,y=237,z=8,distance=40..] 3 235 8 -90 2
attribute @s minecraft:generic.max_health base set 20
effect clear @s[tag=!bad_guy]
title @s clear
gamemode adventure
xp set @s 0 points
xp set @s 0 levels
function modules:anti_stuck/sub/reset_fall
function class:modules/reset_modifiers

# 重置伤害信息
scoreboard players set @s killCombo 0
function modules:mino2/sub/forgive
scoreboard players operation @s statPlayerKD = @s statPlayerKill
scoreboard players operation @s statPlayerKD *= #1000 mem
scoreboard players operation @s statPlayerKD /= @s statPlayerDeath
execute unless score @s Monthly_statPlayerKill matches 1.. run scoreboard players set @s Monthly_statPlayerKill 0
execute as @s[scores={Monthly_statPlayerKill=60..}] run function pvp:state/lobby/monthly_kd

# 重置物品栏与队伍
team join lobby @s
execute as @s[scores={leave_game=1..,team=1..6}] run function pvp:state/lobby/enter_from_arena
scoreboard players set @s team 0
scoreboard players set @s team_prefer 0
function modules:update_bossbar
clear @s
function pvp:state/lobby/refresh_inventory