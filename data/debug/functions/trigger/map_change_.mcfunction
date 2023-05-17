# 人数过多触发的切换地图
tellraw @a[scores={state=1..2}] {"text":" ❇  因人数过多，已自动切换地图！","color":"aqua"}
scoreboard players operation $map_last2 mem = $map_last mem
scoreboard players operation $map_last mem = $map mem
function debug:trigger/map_change_loop
function modules:map/sub/spawn_point
schedule function debug:trigger/map_change_next 10t replace
# 清理实体
kill @e[type=#modules:clean]