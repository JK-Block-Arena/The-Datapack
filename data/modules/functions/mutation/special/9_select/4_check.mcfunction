## 和平模式
# fail_1的添加详见modules:mino1/record
execute as @a[tag=9_select_fail_1,tag=!9_select_fail_2] run function modules:mutation/special/9_select/fail
execute if entity @p[tag=9_select_fail_1,tag=!9_select_fail_2] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"red"},{"selector":"@a[tag=9_select_fail_1]"}," 打起来了！"]
tag @a[tag=9_select_fail_1] add 9_select_fail_2
tag @a remove 9_select_fail_1