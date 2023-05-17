scoreboard players add $info_refresh_inv debug 1
execute if score $info_refresh_inv debug matches 2.. run scoreboard players set $info_refresh_inv debug 0
function debug
