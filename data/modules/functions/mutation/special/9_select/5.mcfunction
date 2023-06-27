## 保持健康
# 显示
title @a[tag=9_select_player] times 0 50 10
title @a[tag=9_select_player] title {"text":"保持健康","color":"green"}
title @a[tag=9_select_player] subtitle {"text":"像花儿一样娇贵","color":"aqua"}
tellraw @a[tag=9_select_player] [{"text":" ❇  你要在","color":"gold"},{"text":" 6 ","color":"yellow"},"秒内不受到伤害哦！"]
# 倒计时
scoreboard players set #9_time mem 120
bossbar set modules:mutation_9 max 120