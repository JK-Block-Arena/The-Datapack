## 和平模式
# 显示
tag @a[scores={state=2},gamemode=adventure] add 9_select_player
title @a[tag=9_select_player] times 0 50 10
title @a[tag=9_select_player] title {"text":"和平模式","color":"green"}
title @a[tag=9_select_player] subtitle {"text":"Love & Peace","color":"aqua"}
tellraw @a[tag=9_select_player] [{"text":" ❇  你要在","color":"gold"},{"text":" 6 ","color":"yellow"},"秒内忍住不打人哦！"]
# 倒计时
scoreboard players set #9_time mem 120
bossbar set modules:mutation_9 max 120