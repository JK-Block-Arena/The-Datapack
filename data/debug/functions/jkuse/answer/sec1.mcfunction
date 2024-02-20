# answer 分数大于1，每秒进行
scoreboard players remove #answer mem 1
execute if score #answer mem matches 0 run scoreboard players add #question mem 1
execute if score #answer mem matches 0 unless score #question mem matches 32.. run scoreboard players set #answer mem 16
title @a times 0s 1.1s 0s
title @a title ""
execute unless score #question mem matches 1.. run title @a subtitle [{"text": "倒计时：","color": "green"},{"score":{"name": "#answer","objective": "mem"},"color": "green"}]
execute if score #question mem matches 1..30 run title @a subtitle [{"text": "题目：","color": "aqua"},{"score":{"name": "#question","objective": "mem"},"color": "aqua"},"  ",{"text": "倒计时：","color": "green"},{"score":{"name": "#answer","objective": "mem"},"color": "green"}]

# 选择后提示
tellraw @a[scores={answer=1},tag=!answered] [{"text": "\n你选择了 ","color": "green"},{"text": "A","color": "yellow"}," 选项！\n"]
tellraw @a[scores={answer=2},tag=!answered] [{"text": "\n你选择了 ","color": "green"},{"text": "B","color": "yellow"}," 选项！\n"]
tellraw @a[scores={answer=3},tag=!answered] [{"text": "\n你选择了 ","color": "green"},{"text": "C","color": "yellow"}," 选项！\n"]
tellraw @a[scores={answer=4},tag=!answered] [{"text": "\n你选择了 ","color": "green"},{"text": "D","color": "yellow"}," 选项！\n"]
tag @a[scores={answer=1..}] add answered

# 题目
execute if score #answer mem matches 16 if score #question mem matches 1..31 run function debug:jkuse/answer/questions

# 结束
execute if score #question mem matches 31 run function debug:jkuse/answer/end