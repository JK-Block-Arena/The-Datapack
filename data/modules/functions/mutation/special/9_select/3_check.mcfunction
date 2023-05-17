## 短跑运动员
# 检查跑了多远
tag @a[scores={select_run=2000..},tag=9_select_player] add 9_select_success
tag @a[tag=9_select_player,tag=!9_select_success] add 9_select_fail
# 结算
execute as @a at @s run scoreboard players operation @s select_run /= #100 mem
execute as @a[tag=9_select_player] at @s run tellraw @s [{"text":" ❇  你跑了 ","color":"gold"},{"score":{"name":"@s","objective":"select_run"},"color":"yellow"}," 米！"]
execute if entity @p[tag=9_select_success] run tellraw @a[scores={state=1..2}] [{"text":" ❇  ","color":"green"},{"selector":"@a[tag=9_select_success]"}," 润得很快。"]
execute if entity @p[tag=9_select_fail] run tellraw @a[scores={state=1..2}] [{"text":" ❇  ","color":"red"},{"selector":"@a[tag=9_select_fail]"}," 好慢哦。"]
scoreboard objectives remove select_run
function modules:mutation/special/9_select/check