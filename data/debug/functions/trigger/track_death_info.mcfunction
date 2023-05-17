scoreboard players add $track_death_info debug 1
execute if score $track_death_info debug matches 3.. run scoreboard players set $track_death_info debug 0
function debug

execute unless score $track_death_info debug matches 1 run gamerule showDeathMessages false
execute if score $track_death_info debug matches 1 run gamerule showDeathMessages true