## 短跑运动员
scoreboard objectives add select_run minecraft.custom:sprint_one_cm "跑的厘米数"
# 显示
tag @a[scores={state=2},gamemode=adventure] add 9_select_player
title @a[tag=9_select_player] times 10 50 10
title @a[tag=9_select_player] title {"text":"短跑运动员","color":"green"}
title @a[tag=9_select_player] subtitle {"text":"不要停下来！","color":"aqua"}
tellraw @a[tag=9_select_player] [{"text":" ❇  你要在","color":"gold"},{"text":" 6 ","color":"yellow"},"秒内接触地面冲刺",{"text":" 20 ","color":"yellow"},"米！"]
# 倒计时
scoreboard players set #9_time mem 120
bossbar set modules:mutation_9 max 120