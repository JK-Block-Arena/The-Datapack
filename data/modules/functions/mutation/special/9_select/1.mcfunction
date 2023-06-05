## 20以内的算法
scoreboard objectives add answer trigger "答案"
scoreboard players enable @a answer
# 第一个数字
scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 20
function modules:random
scoreboard players operation #9_x mem = #random mem
# 第二个数字
function modules:random
scoreboard players operation #9_y mem = #random mem
# 选择符号
scoreboard players set #random_max mem 4
function modules:random
scoreboard players operation #9_c mem = #random mem
# 计算正确答案储存到 9_r 中
scoreboard players operation #9_r mem = #9_x mem
execute if score #9_c mem matches 1 run scoreboard players operation #9_r mem += #9_y mem
execute if score #9_c mem matches 2 run scoreboard players operation #9_r mem -= #9_y mem
execute if score #9_c mem matches 3 run scoreboard players operation #9_r mem *= #9_y mem
execute if score #9_c mem matches 4 run scoreboard players operation #9_r mem %= #9_y mem
## 显示
# 副标题
title @a[scores={state=1..2,team=1..4},gamemode=adventure] times 10 50 10
title @a[scores={state=1..2,team=1..4},gamemode=adventure] title {"text":"20以内的算法","color":"green"}
execute if score #9_c mem matches 1 run title @a[scores={state=1..2,team=1..4},gamemode=adventure] subtitle ["",{"score":{"name":"#9_x","objective":"mem"},"color":"green"},{"text":" + ","color":"gold"},{"score":{"name":"#9_y","objective":"mem"},"color":"green"},{"text":" = ","color":"gold"},"?"]
execute if score #9_c mem matches 2 run title @a[scores={state=1..2,team=1..4},gamemode=adventure] subtitle ["",{"score":{"name":"#9_x","objective":"mem"},"color":"green"},{"text":" - ","color":"gold"},{"score":{"name":"#9_y","objective":"mem"},"color":"green"},{"text":" = ","color":"gold"},"?"]
execute if score #9_c mem matches 3 run title @a[scores={state=1..2,team=1..4},gamemode=adventure] subtitle ["",{"score":{"name":"#9_x","objective":"mem"},"color":"green"},{"text":" * ","color":"gold"},{"score":{"name":"#9_y","objective":"mem"},"color":"green"},{"text":" = ","color":"gold"},"?"]
execute if score #9_c mem matches 4 run title @a[scores={state=1..2,team=1..4},gamemode=adventure] subtitle ["",{"score":{"name":"#9_x","objective":"mem"},"color":"green"},{"text":" % ","color":"gold"},{"score":{"name":"#9_y","objective":"mem"},"color":"green"},{"text":" = ","color":"gold"},"?"]
# 聊天框
execute if score #9_c mem matches 1 run tellraw @a[scores={state=1..2,team=1..4},gamemode=adventure] [{"text":" ❇  请在","color":"gold"},{"text":" 8 ","color":"yellow"},"秒内回答：",{"score":{"name":"#9_x","objective":"mem"},"color":"green"}," + ",{"score":{"name":"#9_y","objective":"mem"},"color":"green"}," = ?"]
execute if score #9_c mem matches 2 run tellraw @a[scores={state=1..2,team=1..4},gamemode=adventure] [{"text":" ❇  请在","color":"gold"},{"text":" 8 ","color":"yellow"},"秒内回答：",{"score":{"name":"#9_x","objective":"mem"},"color":"green"}," - ",{"score":{"name":"#9_y","objective":"mem"},"color":"green"}," = ?"]
execute if score #9_c mem matches 3 run tellraw @a[scores={state=1..2,team=1..4},gamemode=adventure] [{"text":" ❇  请在","color":"gold"},{"text":" 8 ","color":"yellow"},"秒内回答：",{"score":{"name":"#9_x","objective":"mem"},"color":"green"}," * ",{"score":{"name":"#9_y","objective":"mem"},"color":"green"}," = ?"]
execute if score #9_c mem matches 4 run tellraw @a[scores={state=1..2,team=1..4},gamemode=adventure] [{"text":" ❇  请在","color":"gold"},{"text":" 8 ","color":"yellow"},"秒内回答：",{"score":{"name":"#9_x","objective":"mem"},"color":"green"}," % ",{"score":{"name":"#9_y","objective":"mem"},"color":"green"}," = ?"]
tellraw @a[scores={state=1..2,team=1..4},gamemode=adventure] ["",{"text":" ❇  使用 ","color":"gold"},{"text":"/trigger answer set","color":"yellow","underlined":true,"clickEvent":{"action":"suggest_command","value":"/trigger answer set "},"hoverEvent":{"action":"show_text","value":"点我快速填写"}},{"text":" 你的答案","color":"green"},{"text":" 答题！","color":"gold"}]
# 倒计时
scoreboard players set #9_time mem 160
bossbar set modules:mutation_9 max 160