# 每 2 Tick 执行一次
schedule function modules:basic/events/tick2 2t replace

function modules:ray/tick2_handler
function modules:mutation/tick2
function class:events/tick2

function debug:jkuse/tick2