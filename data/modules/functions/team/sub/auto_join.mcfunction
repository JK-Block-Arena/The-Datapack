
# ----------------------------------
#  获取队伍信息
# ----------------------------------

function modules:team/sub/update
# 获取各队人数与最少人数的差
scoreboard players operation #red_diff mem = #red mem
scoreboard players operation #red_diff mem -= #min mem
scoreboard players operation #blue_diff mem = #blue mem
scoreboard players operation #blue_diff mem -= #min mem
scoreboard players operation #green_diff mem = #green mem
scoreboard players operation #green_diff mem -= #min mem
scoreboard players operation #yellow_diff mem = #yellow mem
scoreboard players operation #yellow_diff mem -= #min mem

# ----------------------------------
#  判断可以加入的队伍
# ----------------------------------

# 如果队伍人数不一致：进入人数最少且人数不为 0 的队伍
execute if score $team_diff mem matches 1.. if score #red mem matches 1.. if score #red_diff mem matches 0 run tag @s add red
execute if score $team_diff mem matches 1.. if score #blue mem matches 1.. if score #blue_diff mem matches 0 run tag @s add blue
execute if score $team_diff mem matches 1.. if score #green mem matches 1.. if score #green_diff mem matches 0 run tag @s add green
execute if score $team_diff mem matches 1.. if score #yellow mem matches 1.. if score #yellow_diff mem matches 0 run tag @s add yellow
# 如果队伍人数一致：
#  - 当前有 0~3 个队伍：加入一个无人的队伍
execute if score $team_diff mem matches 0 if score #team mem matches ..3 if score #red mem matches 0 run tag @s add red
execute if score $team_diff mem matches 0 if score #team mem matches ..3 if score #blue mem matches 0 run tag @s add blue
execute if score $team_diff mem matches 0 if score #team mem matches ..3 if score #green mem matches 0 run tag @s add green
execute if score $team_diff mem matches 0 if score #team mem matches ..3 if score #yellow mem matches 0 run tag @s add yellow
#  - 当前有 4 个队伍：加入任意队伍
execute if score $team_diff mem matches 0 if score #team mem matches 4 run tag @s add red
execute if score $team_diff mem matches 0 if score #team mem matches 4 run tag @s add blue
execute if score $team_diff mem matches 0 if score #team mem matches 4 run tag @s add green
execute if score $team_diff mem matches 0 if score #team mem matches 4 run tag @s add yellow

# ------------------------------------------
#  加入其中表现最差的队伍
# ------------------------------------------

# 获取最小击杀数
scoreboard players set #min mem 1000
execute as @s[tag=red] run scoreboard players operation #min mem < §c红队§r teamKill
execute as @s[tag=blue] run scoreboard players operation #min mem < §9蓝队§r teamKill
execute as @s[tag=green] run scoreboard players operation #min mem < §a绿队§r teamKill
execute as @s[tag=yellow] run scoreboard players operation #min mem < §e黄队§r teamKill
# 加入目前最差的队伍
execute if score §c红队§r teamKill = #min mem as @s[tag=red] run team join red @s
execute if score §9蓝队§r teamKill = #min mem as @s[tag=blue] run team join blue @s
execute if score §a绿队§r teamKill = #min mem as @s[tag=green] run team join green @s
execute if score §e黄队§r teamKill = #min mem as @s[tag=yellow] run team join yellow @s

# 清理 Tag
tag @s remove red
tag @s remove blue
tag @s remove green
tag @s remove yellow
