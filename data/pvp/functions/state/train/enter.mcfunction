# 玩家状态 3：训练场中
scoreboard players set @s state 3
team join lobby @s
scoreboard players set @s team 0

# 重置位置
tp @s[scores={tip_0_tutorial=..6},x=1050,y=100,z=1050,distance=500..] 1043.5 92.01 1016.5 0 -1.5
tp @s[scores={tip_0_tutorial=7..},x=1050,y=100,z=1050,distance=500..] 1043.5 92.01 1079.5 -180 6
attribute @s generic.max_health base set 20
title @s clear

# 初始状态
effect clear @s
effect give @s instant_health 20 5 true
attribute @s generic.attack_damage base set 1

# 调用事件
execute at @s run function modules:basic/events/player_spawn

# 刷新物品栏与 bossbar
function modules:update_bossbar
tag @s remove detail
tag @s add refresh_inventory
