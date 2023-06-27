## 蛙跳训练
scoreboard objectives add select_jump dummy "检测蛙跳"
scoreboard objectives add select_jump_real dummy "蛙跳次数"
# 显示
title @a[tag=9_select_player] times 0 50 10
title @a[tag=9_select_player] title {"text":"蛙跳训练","color":"green"}
title @a[tag=9_select_player] subtitle {"text":"我是一只小青蛙~","color":"aqua"}
tellraw @a[tag=9_select_player] [{"text":" ❇  你要在","color":"gold"},{"text":" 8 ","color":"yellow"},"秒内潜行跳跃",{"text":" 8 ","color":"yellow"},"次！"]
# 倒计时
scoreboard players set #9_time mem 160
bossbar set modules:mutation_9 max 160