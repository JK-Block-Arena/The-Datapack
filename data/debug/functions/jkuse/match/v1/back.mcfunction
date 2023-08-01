# 传送回选职业位
scoreboard players set @a[scores={team=5..6}] state 0
execute as @a[scores={team=5..6}] run attribute @s minecraft:generic.max_health base set 20
clear @a[scores={team=5..6}]
effect clear @a[scores={team=5..6}]
effect give @a[scores={team=5..6}] instant_health 1 9 true
xp set @a[scores={team=5..6}] 0 points
xp set @a[scores={team=5..6}] 0 levels
scoreboard players set @s killCombo 0
function modules:mino2/sub/forgive
function modules:anti_stuck/sub/reset_fall
function class:modules/reset_modifiers
function pvp:state/lobby/refresh_inventory
tp @p[team=red_v1] -0.5 11 -17.5 270 0
tp @p[team=blue_v1] 5.5 11.00 -17.5 90 0
# 初次进入
execute if score #match_time mem matches 185.. run function debug:jkuse/match/v1/first_enter
# 战斗一局后
execute if score #match_time mem matches ..180 run function debug:jkuse/match/v1/respawn