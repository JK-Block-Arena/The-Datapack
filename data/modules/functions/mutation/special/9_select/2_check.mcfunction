## 木头人不许动
# 检查动没动
execute as @a[tag=9_select_player] at @s if score @s player_id = @e[tag=9_wood_marker,limit=1,sort=nearest,distance=...3] player_id run tag @s add 9_select_success
execute as @a[tag=9_select_player] at @s if score @s player_id = @e[tag=9_wood_marker,limit=1,sort=nearest,distance=.301..] player_id run tag @s add 9_select_fail
kill @e[tag=9_wood_marker]
execute if entity @p[tag=9_select_success] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"green"},{"selector":"@a[tag=9_select_success]"}," 是合格的木头人！"]
execute if entity @p[tag=9_select_fail] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"red"},{"selector":"@a[tag=9_select_fail]"}," 根本停不下来！"]
function modules:mutation/special/9_select/check