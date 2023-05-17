scoreboard players set $map mem 1
function modules:map/sub/spawn_point
schedule function debug:trigger/map_change_next 10t replace
function debug

# 清理实体
kill @e[type=#modules:clean]
