scoreboard players add $system_f3 debug 1
execute if score $system_f3 debug matches 2.. run scoreboard players set $system_f3 debug 0
function debug

execute if score $system_f3 debug matches 0 run gamerule reducedDebugInfo true
execute if score $system_f3 debug matches 1 run gamerule reducedDebugInfo false