## 就踩方块
tag @a[tag=9_select_player,tag=!9_select_success] add 9_select_fail
execute if entity @p[tag=9_select_success] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"green"},{"selector":"@a[tag=9_select_success]"}," 踩到了对应方块。"]
execute if entity @p[tag=9_select_fail] run tellraw @a[scores={state=1..2,team=1..4}] [{"text":" ❇  ","color":"red"},{"selector":"@a[tag=9_select_fail]"}," 对地图不熟。"]
function modules:mutation/special/9_select/check