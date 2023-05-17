# ---------------------------------------------------------------
#  短期表现
# ---------------------------------------------------------------

# Score 8000 7500 7000 6500 6000 5500 Score | 5000 | Score 4500 4000 3500 3000 2500 2000 Score
#  K/D  4.00 3.00 2.33 1.87 1.50 1.22  K/D  | 1.00 |  D/K  1.22 1.50 1.87 2.33 3.00 4.00  D/K

# 计算击杀者
scoreboard players operation @s statPlayerKd *= #950 mem
scoreboard players operation @s statPlayerKd /= #1000 mem
scoreboard players add @s statPlayerKd 500
# 计算受害者
scoreboard players operation @a[tag=victim] statPlayerKd *= #950 mem
scoreboard players operation @a[tag=victim] statPlayerKd /= #1000 mem

# ---------------------------------------------------------------
#  长期表现（ELO）
# ---------------------------------------------------------------

# 击杀者为 A，死亡者为 B，计算两位玩家的 ELO 分差
#   Diff = A.Score - B.Score
scoreboard players operation #elo_diff mem = @s statPlayerElo
execute as @a[tag=victim] run scoreboard players operation #elo_diff mem -= @s statPlayerElo
scoreboard players set #elo_negative mem 0
execute if score #elo_diff mem matches ..-1 run scoreboard players set #elo_negative mem 1

# 获取 ELO 得分的变化量（0~50，这个值乘以一定倍数后即为 A 的加分、B 的扣分）
#   Delta = If(IsAWin, 50, 0) - 50 / (1 + Math.Pow(10, -Diff / 1350))
#         = 50 * (1 - 1 / (1 + Math.Pow(10, -Diff / 1350))
# A 与 B 相比的 ELO 得分越高，即虐菜，变化量越小
#   Diff  +2700 +2000 +1500 +1000 +0500 ±0000 -0500 -1000 -1500 -2000 -2700
#   Delta   00    02    04    08    15    25    35    42    46    48    50
execute if score #elo_negative mem matches 1 run scoreboard players operation #elo_diff mem *= #-1 mem
execute if score #elo_diff mem matches 0000..0023 run scoreboard players set #elo_delta mem 25
execute if score #elo_diff mem matches 0024..0070 run scoreboard players set #elo_delta mem 24
execute if score #elo_diff mem matches 0071..0117 run scoreboard players set #elo_delta mem 23
execute if score #elo_diff mem matches 0118..0165 run scoreboard players set #elo_delta mem 22
execute if score #elo_diff mem matches 0166..0213 run scoreboard players set #elo_delta mem 21
execute if score #elo_diff mem matches 0214..0262 run scoreboard players set #elo_delta mem 20
execute if score #elo_diff mem matches 0263..0312 run scoreboard players set #elo_delta mem 19
execute if score #elo_diff mem matches 0313..0362 run scoreboard players set #elo_delta mem 18
execute if score #elo_diff mem matches 0363..0415 run scoreboard players set #elo_delta mem 17
execute if score #elo_diff mem matches 0416..0469 run scoreboard players set #elo_delta mem 16
execute if score #elo_diff mem matches 0470..0524 run scoreboard players set #elo_delta mem 15
execute if score #elo_diff mem matches 0525..0583 run scoreboard players set #elo_delta mem 14
execute if score #elo_diff mem matches 0584..0644 run scoreboard players set #elo_delta mem 13
execute if score #elo_diff mem matches 0645..0708 run scoreboard players set #elo_delta mem 12
execute if score #elo_diff mem matches 0709..0776 run scoreboard players set #elo_delta mem 11
execute if score #elo_diff mem matches 0777..0850 run scoreboard players set #elo_delta mem 10
execute if score #elo_diff mem matches 0851..0929 run scoreboard players set #elo_delta mem 09
execute if score #elo_diff mem matches 0930..1016 run scoreboard players set #elo_delta mem 08
execute if score #elo_diff mem matches 1017..1114 run scoreboard players set #elo_delta mem 07
execute if score #elo_diff mem matches 1115..1225 run scoreboard players set #elo_delta mem 06
execute if score #elo_diff mem matches 1226..1356 run scoreboard players set #elo_delta mem 05
execute if score #elo_diff mem matches 1357..1516 run scoreboard players set #elo_delta mem 04
execute if score #elo_diff mem matches 1517..1726 run scoreboard players set #elo_delta mem 03
execute if score #elo_diff mem matches 1727..2038 run scoreboard players set #elo_delta mem 02
execute if score #elo_diff mem matches 2039..2694 run scoreboard players set #elo_delta mem 01
execute if score #elo_diff mem matches 2695..9999 run scoreboard players set #elo_delta mem 00
execute if score #elo_negative mem matches 1 run scoreboard players operation #elo_delta mem *= #-1 mem
execute if score #elo_negative mem matches 1 run scoreboard players add #elo_delta mem 50

# 获取各自的变化量比例：已有的记录数越少，变化量越大
#   A.Radio = If(A.Count < 30, 4, 0) + If(A.Count < 80, 3, 0) + 1
scoreboard players set @s temp 1
scoreboard players add @s[scores={statPlayerEloCount=..80}] temp 2
scoreboard players add @s[scores={statPlayerEloCount=..30}] temp 4
scoreboard players set @a[tag=victim] temp 1
scoreboard players add @a[tag=victim,scores={statPlayerEloCount=..80}] temp 2
scoreboard players add @a[tag=victim,scores={statPlayerEloCount=..30}] temp 4

# 改变分数
#   A.Score += A.Radio * Delta : B.Score -= B.Radio * Delta
scoreboard players operation @s temp *= #elo_delta mem
scoreboard players operation @s statPlayerElo += @s temp
execute if score $stat_elo debug matches 1 run tellraw @s ["表现分数：",{"score":{"name": "@s","objective": "statPlayerElo"}}," (+",{"score":{"name": "@s","objective": "temp"}},")"]
scoreboard players operation @a[tag=victim] temp *= #elo_delta mem
execute as @a[tag=victim] run scoreboard players operation @s statPlayerElo -= @s temp
execute if score $stat_elo debug matches 1 as @a[tag=victim] run tellraw @s ["表现分数：",{"score":{"name": "@s","objective": "statPlayerElo"}}," (-",{"score":{"name": "@s","objective": "temp"}},")"]

# 记录次数
scoreboard players add @s statPlayerEloCount 1
scoreboard players add @a[tag=victim] statPlayerEloCount 1