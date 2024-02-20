## 匹夫之怒
# 结算
tag @a[tag=9_select_success_2,tag=9_select_player] add 9_select_success
execute if entity @p[tag=9_select_success] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"green"},{"selector":"@a[tag=9_select_success]"}," 杀伐果断。"]
execute if entity @p[tag=9_select_player,tag=!9_select_success_2] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"red"},{"selector":"@a[tag=!9_select_success_2,tag=9_select_player]"}," 提不动刀。"]
tag @a remove 9_select_success_2
tag @a[tag=9_select_player,tag=!9_select_success] add 9_select_fail
function modules:mutation/special/9_select/check