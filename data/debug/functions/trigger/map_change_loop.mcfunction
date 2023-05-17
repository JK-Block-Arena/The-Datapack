#scoreboard players set #people mem 12
scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 7
function modules:random
scoreboard players operation $map mem = #random mem
execute if score $map mem = $map_last mem run function debug:trigger/map_change_loop
execute if score $map mem = $map_last2 mem run function debug:trigger/map_change_loop
execute if score $map mem matches 3 if score #people mem matches 9.. run function debug:trigger/map_change_loop
execute if score $map mem matches 7 if score #people mem matches 11.. run function debug:trigger/map_change_loop