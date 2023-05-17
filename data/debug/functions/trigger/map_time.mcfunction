scoreboard players add $map_time debug 1
execute if score $map_time debug matches 2.. run scoreboard players set $map_time debug 0
function debug

execute if score $map_time debug matches 0 run gamerule doDaylightCycle true
execute if score $map_time debug matches 1 run gamerule doDaylightCycle false