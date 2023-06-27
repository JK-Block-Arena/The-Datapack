# 重置
function modules:regen/sub/reset_afk
execute unless entity @p[team=red_v1] unless entity @p[team=blue_v1] run function pvp:state/lobby/reset_1v1_score

# 加入队伍
execute unless entity @p[team=blue_v1] run team join blue_v1 @s
execute unless entity @p[team=red_v1] run team join red_v1 @s

execute if entity @p[team=red_v1,distance=.1..] if entity @p[team=blue_v1,distance=.1..] run tag @s add 1v1_full
tellraw @s[tag=1v1_full] {"text": " ❇  1v1人数已满，无法再加入了！","color": "dark_red"}
tp @s[tag=1v1_full] 3 235 8 -90 2

# 开始游戏
execute as @s[tag=!1v1_full] run function pvp:state/battle/enter
tag @s remove 1v1_full

# 显示提示
tellraw @s[team=red_v1] [{"text":" ✳ ","color":"dark_red"}," 你已加入1v1红队！"]
tellraw @s[team=blue_v1] [{"text":" ✳ ","color":"dark_blue"}," 你已加入1v1蓝队！"]
execute at @s[scores={team=1..}] run tellraw @a[distance=.1..,scores={state=0..2}] ["",{"text":" ❇  "},{"selector":"@s"}," 加入了1v1战场"]