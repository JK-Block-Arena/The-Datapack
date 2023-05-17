## 20以内的算法
# 答题正误
execute as @a[scores={state=1..2},gamemode=adventure] at @s if score @s answer = #9_r mem run tag @s add 9_select_success
execute as @a[scores={state=1..2},gamemode=adventure] at @s unless score @s answer = #9_r mem run tag @s add 9_select_fail
# 结算
execute if entity @p[tag=9_select_success] run tellraw @a[scores={state=1..2}] [{"text":" ❇  恭喜 ","color":"green"},{"selector":"@a[tag=9_select_success]"}," 答题成功！"]
execute if entity @p[tag=9_select_fail] run tellraw @a[scores={state=1..2}] [{"text":" ❇  恭喜 ","color":"red"},{"selector":"@a[tag=9_select_fail]"}," 答题失败！"]
tellraw @a[scores={state=1..2}] [{"text":" ❇  本题正确答案为： ","color":"green"},{"score":{"name":"#9_r","objective":"mem"},"color":"yellow"}," ！"]
scoreboard objectives remove answer
function modules:mutation/special/9_select/check