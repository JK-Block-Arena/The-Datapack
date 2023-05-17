scoreboard players add $stat_elo debug 1
execute if score $stat_elo debug matches 2.. run scoreboard players set $stat_elo debug 0
function debug
