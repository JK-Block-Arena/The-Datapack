## 就踩方块
execute unless entity @e[tag=mutation_9_block] run summon marker 0 1 0 {Tags:["mutation_9_block"]}
function modules:mutation/special/9_select/7_random
# 显示
title @a[tag=9_select_player] times 0 50 10
title @a[tag=9_select_player] title {"text":"就踩方块","color":"green"}
title @a[tag=9_select_player] subtitle {"text":"这是什么，踩一下","color":"aqua"}
tellraw @a[tag=9_select_player] [{"text":" ❇  你要在","color":"gold"},{"text":" 10 ","color":"yellow"},"秒内踩到 ",{"selector":"@e[limit=1,tag=mutation_9_block]","color": "yellow","bold": true},"！"]
# 倒计时
scoreboard players set #9_time mem 200
bossbar set modules:mutation_9 max 200