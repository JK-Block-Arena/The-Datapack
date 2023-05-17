# 每 1 Tick 执行一次
schedule function modules:basic/events/tick1 1t replace

execute if score $map_marker debug matches 1 run function debug:map_marker_tick1
function modules:basic/tick1
function modules:mino1/tick1_handler
function modules:mutation/tick1_handler
function modules:projectile/tick1_handler
function modules:detail/tick1
function modules:jump/tick1
function pvp:state/tick1
function class:events/tick1
function debug:jkuse/tick1
