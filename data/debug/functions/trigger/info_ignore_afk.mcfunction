scoreboard players add $info_ignore_afk debug 1
execute if score $info_ignore_afk debug matches 2.. run scoreboard players set $info_ignore_afk debug 0
function debug
