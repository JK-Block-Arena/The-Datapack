scoreboard players add $balance_dynamic debug 1
execute if score $balance_dynamic debug matches 2.. run scoreboard players set $balance_dynamic debug 0
function debug

execute as @a at @s run function modules:stat/sub/balance_refresh
tag @a add refresh_inventory