## 保持健康
# 结算
tag @a[tag=!9_select_fail_2,tag=9_select_player] add 9_select_success
execute if entity @p[tag=9_select_success] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"green"},{"selector":"@a[tag=9_select_success]"}," 非常小心翼翼。"]
execute if entity @p[tag=9_select_fail_2] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"red"},{"selector":"@a[tag=9_select_fail_2]"}," 太不爱惜自己了。"]
tag @a remove 9_select_fail_2
function modules:mutation/special/9_select/check