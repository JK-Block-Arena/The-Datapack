## 匹夫之怒
# 显示
title @a[tag=9_select_player] times 0 50 10
title @a[tag=9_select_player] title {"text":"匹夫之怒","color":"green"}
title @a[tag=9_select_player] subtitle {"text":"Hate & War","color":"aqua"}
tellraw @a[tag=9_select_player] [{"text":" ❇  你要在","color":"gold"},{"text":" 6 ","color":"yellow"},"秒内攻击你的对手！"]
# 倒计时
scoreboard players set #9_time mem 120
bossbar set modules:mutation_9 max 120