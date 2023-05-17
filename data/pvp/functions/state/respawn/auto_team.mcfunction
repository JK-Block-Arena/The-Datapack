function modules:team/sub/auto_join

# 显示提示
tellraw @s[team=red] [{"text":"\n ✳ ","color":"red"}," 由于你所在的队伍人数过多，你已自动加入红队！\n"]
tellraw @s[team=blue] [{"text":"\n ✳ ","color":"blue"}," 由于你所在的队伍人数过多，你已自动加入蓝队！\n"]
tellraw @s[team=green] [{"text":"\n ✳ ","color":"green"}," 由于你所在的队伍人数过多，你已自动加入绿队！\n"]
tellraw @s[team=yellow] [{"text":"\n ✳ ","color":"yellow"}," 由于你所在的队伍人数过多，你已自动加入黄队！\n"]

# 显示提示
execute as @s[team=red] run tellraw @a[distance=0.01..] ["",{"text":" ❇  "},{"selector":"@s"}," 由于原队伍人数过多，现已自动加入红队！"]
execute as @s[team=blue] run tellraw @a[distance=0.01..] ["",{"text":" ❇  "},{"selector":"@s"}," 由于原队伍人数过多，现已自动加入蓝队！"]
execute as @s[team=green] run tellraw @a[distance=0.01..] ["",{"text":" ❇  "},{"selector":"@s"}," 由于原队伍人数过多，现已自动加入绿队！"]
execute as @s[team=yellow] run tellraw @a[distance=0.01..] ["",{"text":" ❇  "},{"selector":"@s"}," 由于原队伍人数过多，现已自动加入黄队！"]