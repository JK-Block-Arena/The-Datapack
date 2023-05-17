tag @s add self

#【选择传送目标】
# 1. 优先选择不同队的 Marker
execute as @e[tag=7_marker] unless score @s team = @p[tag=self] team run tag @s add 7_marker_sel
#    如果没有，则选择任意 Marker
execute unless entity @e[tag=7_marker_sel] run tag @e[tag=7_marker] add 7_marker_sel
# 2. 优先选择未完成传送者的 Marker，防止闭环
execute as @a[tag=7_player] at @s run function modules:mutation/special/7_player_sel
#    如果没有，则选择任意 Marker
execute unless entity @e[tag=7_marker_sel2] run tag @e[tag=7_marker_sel] add 7_marker_sel2
# 3. 随机选择一个符合条件的 Marker
tag @e[tag=7_marker_sel2,sort=random,limit=1] add 7_marker_sel3
# 4. 清理 Tag，至此只留下一个 7_marker_sel3
tag @e remove 7_marker_sel
tag @e remove 7_marker_sel2
tag @s remove self

# 传送
tp @s @e[tag=7_marker_sel3,limit=1]
execute at @s run function modules:anti_stuck/sub/reset_fall
# 显示提示
execute as @a if score @s player_id = @e[tag=7_marker_sel3,limit=1] player_id run tag @s add 7_target
tellraw @s ["",{"text":" ⚕ 突变效果触发 ⚕ ","color":"light_purple"}," 你已被传送至 ",{"selector":"@a[tag=7_target]"}," 的位置！"]
tag @a[tag=7_target] remove 7_target
# 触发伤害追踪
scoreboard players set @s mino_time_00080 9
scoreboard players operation @s mino_source_00080 = @e[tag=7_marker_sel3,limit=1] player_id

# 清理
tag @s remove 7_player
kill @e[tag=7_marker_sel3]
