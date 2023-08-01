scoreboard players set $map mem 9
function modules:map/sub/spawn_point
schedule function debug:trigger/map_change_next 10t replace
execute unless score #match_mode mem matches 1 run function debug

# 清理实体
kill @e[type=#modules:clean]
