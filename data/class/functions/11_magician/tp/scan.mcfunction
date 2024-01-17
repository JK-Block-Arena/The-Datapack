execute if score $track_ray_move debug matches 1 run particle end_rod

# 在射线范围查找目标玩家
execute as @s[team=red] run tag @p[distance=..3,gamemode=adventure,team=!red] add 11_target
execute as @s[team=blue] run tag @p[distance=..3,gamemode=adventure,team=!blue] add 11_target
execute as @s[team=green] run tag @p[distance=..3,gamemode=adventure,team=!green] add 11_target
execute as @s[team=yellow] run tag @p[distance=..3,gamemode=adventure,team=!yellow] add 11_target
execute as @s[team=red_v1] run tag @p[distance=..3,gamemode=adventure,team=!red_v1] add 11_target
execute as @s[team=blue_v1] run tag @p[distance=..3,gamemode=adventure,team=!blue_v1] add 11_target
execute as @s[team=lobby] run tag @e[sort=nearest,limit=1,distance=..3,type=minecraft:vindicator] add 11_target

# 循环
scoreboard players remove @s 11_tp_distance 1
execute as @s[scores={11_tp_distance=1..}] positioned ^ ^ ^2 run function class:11_magician/tp/scan