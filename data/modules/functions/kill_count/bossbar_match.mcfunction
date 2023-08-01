## 友谊赛特供
# 增加队伍击杀计数
execute as @s[team=red] run scoreboard players add §c红队§r teamKill 1
execute as @s[team=blue] run scoreboard players add §9蓝队§r teamKill 1
execute as @s[team=green] run scoreboard players add §a绿队§r teamKill 1
execute as @s[team=yellow] run scoreboard players add §e黄队§r teamKill 1
scoreboard players add #count teamKill 1

# 获取新的重置进度值 共6k
# 比赛种类       3v3v3            2v2v2v2
# 进度条分数   6k/(50*3)=40    6k/(40*4)=37.5
# 获胜条件        50                40
# 突变条件        75                60
execute store result score #before mem run bossbar get bossbar:white value
execute if score #match_type mem matches 3 run scoreboard players add #before mem 40
execute if score #match_type mem matches 2 run scoreboard players add #before mem 37

# 设置新值
execute store result bossbar bossbar:white value run scoreboard players get #before mem
execute store result bossbar bossbar:red value run scoreboard players get #before mem
execute store result bossbar bossbar:blue value run scoreboard players get #before mem
execute store result bossbar bossbar:green value run scoreboard players get #before mem
execute store result bossbar bossbar:yellow value run scoreboard players get #before mem
execute store result bossbar sp:white value run scoreboard players get #before mem

# 突变启动
execute if score #match_type mem matches 3 if score #count teamKill matches 75 run function modules:mutation/sub/on_match
execute if score #match_type mem matches 2 if score #count teamKill matches 60 run function modules:mutation/sub/on_match

# 结束
execute if score #match_type mem matches 3 if score §c红队§r teamKill matches 50.. run function modules:kill_count/reset
execute if score #match_type mem matches 3 if score §9蓝队§r teamKill matches 50.. run function modules:kill_count/reset
execute if score #match_type mem matches 3 if score §a绿队§r teamKill matches 50.. run function modules:kill_count/reset
execute if score #match_type mem matches 3 if score §e黄队§r teamKill matches 50.. run function modules:kill_count/reset

execute if score #match_type mem matches 2 if score §c红队§r teamKill matches 40.. run function modules:kill_count/reset
execute if score #match_type mem matches 2 if score §9蓝队§r teamKill matches 40.. run function modules:kill_count/reset
execute if score #match_type mem matches 2 if score §a绿队§r teamKill matches 40.. run function modules:kill_count/reset
execute if score #match_type mem matches 2 if score §e黄队§r teamKill matches 40.. run function modules:kill_count/reset

# 不太可能用到↓
execute if score #before mem matches 6000.. run function modules:kill_count/reset