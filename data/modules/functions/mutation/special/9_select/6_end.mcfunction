## 蛙跳训练
tag @a[tag=9_select_player,scores={select_jump_real=8..}] add 9_select_success
tag @a[tag=9_select_player,tag=!9_select_success] add 9_select_fail
execute as @a[tag=9_select_player] run tellraw @s [{"text":" ❇  你蛙跳了 ","color":"gold"},{"score":{"name":"@s","objective":"select_jump_real"},"color":"yellow"}," 次！"]
execute if entity @p[tag=9_select_success] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"green"},{"selector":"@a[tag=9_select_success]"}," 擅长扮演青蛙。"]
execute if entity @p[tag=9_select_fail] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"red"},{"selector":"@a[tag=9_select_fail]"}," 做不出蛙明灯。"]
scoreboard players set @a[tag=9_select_player] select_jump_real 0
function modules:mutation/special/9_select/check