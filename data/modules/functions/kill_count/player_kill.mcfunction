# 增加队伍击杀计数
execute if score $team_diff mem matches ..1 as @s[team=red] run scoreboard players add §c红队§r teamKill 1
execute if score $team_diff mem matches ..1 as @s[team=blue] run scoreboard players add §9蓝队§r teamKill 1
execute if score $team_diff mem matches ..1 as @s[team=green] run scoreboard players add §a绿队§r teamKill 1
execute if score $team_diff mem matches ..1 as @s[team=yellow] run scoreboard players add §e黄队§r teamKill 1

# 触发击杀反馈
scoreboard players add @s killCombo 1
scoreboard players set @s[scores={statPlayerLevel=1}] killComboReset 55
scoreboard players set @s[scores={statPlayerLevel=2}] killComboReset 45
scoreboard players set @s[scores={statPlayerLevel=3}] killComboReset 40
scoreboard players set @s[scores={statPlayerLevel=4}] killComboReset 30
scoreboard players add @s[scores={class=2}] killComboReset 20
execute as @s[scores={state=2}] at @s run function modules:kill_count/combo_feedback

# ------------------------
#  重置条
# ------------------------

# 获取新的重置进度值
execute store result score #before mem run bossbar get bossbar:white value
scoreboard players operation #after mem = #before mem
# 最大值为 6000，实现平均每人击杀 22 次 + 10 次预告
# 预期人数为 5 人，即为击杀 100 次 → 最后 10 次击杀，每次让值固定 +60
execute if score #before mem matches 5400.. run scoreboard players add #after mem 60
# 在前 5400 分中，每人平均击杀 22 次，则随机选择一个人，如果是自己，则 +250
# 为了平滑处理，随机选择 5 次，每次如果是自己，则 +50
execute if score #before mem matches ..5399 as @r[scores={state=1..2}] as @s[tag=murder] run scoreboard players add #after mem 50
execute if score #before mem matches ..5399 as @r[scores={state=1..2}] as @s[tag=murder] run scoreboard players add #after mem 50
execute unless score $mutation mem matches 1 if score #before mem matches ..5399 as @r[scores={state=1..2}] as @s[tag=murder] run scoreboard players add #after mem 50
execute unless score $mutation mem matches 1 if score #before mem matches ..5399 as @r[scores={state=1..2}] as @s[tag=murder] run scoreboard players add #after mem 50
# 高于或低于预期人数的微调
execute store result score #people mem if entity @a[scores={state=1..2}]
execute if score #people mem matches ..7 if score #before mem matches ..5399 as @r[scores={state=1..2}] as @s[tag=murder] run scoreboard players add #after mem 50
execute if score #people mem matches ..3 if score #before mem matches ..5399 as @r[scores={state=1..2}] as @s[tag=murder] run scoreboard players add #after mem 50
# 为了避免超过 5400，需要额外处理一下
execute if score #before mem matches ..5399 if score #after mem matches 5401.. run scoreboard players set #after mem 5400

# 设置新值
execute store result bossbar bossbar:white value run scoreboard players get #after mem
execute store result bossbar bossbar:red value run scoreboard players get #after mem
execute store result bossbar bossbar:blue value run scoreboard players get #after mem
execute store result bossbar bossbar:green value run scoreboard players get #after mem
execute store result bossbar bossbar:yellow value run scoreboard players get #after mem

# 触发中段突变
execute if score $mutation_count debug matches 0 unless entity @a[scores={statPlayerRound=..1,state=1..2}] if score #before mem matches ..1999 if score #after mem matches 2000.. run function modules:mutation/sub/on_random
execute if score $mutation_count debug matches 1 if score #before mem matches ..1999 if score #after mem matches 2000.. run function modules:mutation/sub/on_random
# 触发后段突变
execute if score $mutation_count debug matches 0..2 if score #before mem matches ..3999 if score #after mem matches 4000.. run function modules:mutation/sub/on_random

# 重置计数
execute if score #before mem matches ..5399 if score #after mem matches 5400 run tellraw @a[scores={state=0..2,tip_0_tutorial=7..}] [{"text":" ❇ ","color":"aqua"}," 本轮循环将在 10 次击杀后重置！"]
execute if score #before mem matches ..5699 if score #after mem matches 5700 run tellraw @a[scores={state=0..2,tip_0_tutorial=7..}] [{"text":" ❇ ","color":"aqua"}," 本轮循环将在 5 次击杀后重置！"]
execute if score #before mem matches ..5879 if score #after mem matches 5880 run tellraw @a[scores={state=0..2,tip_0_tutorial=7..}] [{"text":" ❇ ","color":"aqua"}," 本轮循环将在 2 次击杀后重置！"]
execute if score #before mem matches ..5999 if score #after mem matches 6000 run schedule function modules:kill_count/reset 1t replace
# 提示
execute if score #before mem matches ..0999 if score #after mem matches 1000.. run tag @a[scores={tip_2_reset=..2,state=0..2,tip_0_tutorial=7..}] add tip_2_reset
execute if score #before mem matches ..2999 if score #after mem matches 3000.. run tag @a[scores={tip_2_reset=..2,state=0..2,tip_0_tutorial=7..}] add tip_2_reset
execute if score #before mem matches ..4999 if score #after mem matches 5000.. run tag @a[scores={tip_2_reset=..2,state=0..2,tip_0_tutorial=7..}] add tip_2_reset

# 人数过多换地图 3沙滩 7商店
execute if score $map mem matches 3 if score #people mem matches 9.. run function debug:trigger/map_change_
execute if score $map mem matches 7 if score #people mem matches 11.. run function debug:trigger/map_change_