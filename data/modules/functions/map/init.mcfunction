scoreboard players operation $map_last2 mem = $map_last mem
scoreboard players operation $map_last mem = $map mem
function modules:map/randomize
scoreboard players set $map_v1 mem 1
# 清理实体
kill @e[type=#modules:clean]