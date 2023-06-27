# 确认队伍
team join lobby @s[scores={team_prefer=0}]
team join red @s[scores={team_prefer=1}]
team join blue @s[scores={team_prefer=2}]
team join green @s[scores={team_prefer=3}]
team join yellow @s[scores={team_prefer=4}]
execute as @s[team=lobby,scores={team_prefer=0..4}] run function modules:team/sub/auto_join
execute as @s[team=!lobby] if score $balance_team debug matches 0 run function modules:team/sub/auto_join_with_prefer

# 开始游戏
function modules:regen/sub/reset_afk
function pvp:state/battle/enter

# 显示提示
tellraw @s[team=red] [{"text":" ✳ ","color":"red"}," 你已加入红队！"]
tellraw @s[team=blue] [{"text":" ✳ ","color":"blue"}," 你已加入蓝队！"]
tellraw @s[team=green] [{"text":" ✳ ","color":"green"}," 你已加入绿队！"]
tellraw @s[team=yellow] [{"text":" ✳ ","color":"yellow"}," 你已加入黄队！"]
execute at @s[scores={team=1..}] run tellraw @a[distance=.1..,scores={state=0..2}] ["",{"text":" ❇  "},{"selector":"@s"}," 加入了战场"]