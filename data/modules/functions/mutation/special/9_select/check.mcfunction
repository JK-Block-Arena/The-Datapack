# 结算，都调用的到
execute as @a[tag=9_select_success] at @s run function modules:mutation/special/9_select/success
execute as @a[tag=9_select_fail] at @s run function modules:mutation/special/9_select/fail
tag @a remove 9_select_success
tag @a remove 9_select_fail