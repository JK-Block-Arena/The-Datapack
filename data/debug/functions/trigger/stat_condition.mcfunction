scoreboard players add $stat_condition debug 1
execute if score $stat_condition debug matches 3.. run scoreboard players set $stat_condition debug 0
function debug
