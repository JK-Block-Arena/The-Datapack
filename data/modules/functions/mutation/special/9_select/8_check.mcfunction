## 匹夫之怒
# success_1的添加详见modules:mino1/record
execute if entity @p[tag=9_select_success_1,tag=!9_select_success_2] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"green"},{"selector":"@a[tag=9_select_success_1]"}," 狠狠地给了对手一拳！"]
tag @a[tag=9_select_success_1] add 9_select_success_2
tag @a remove 9_select_success_1