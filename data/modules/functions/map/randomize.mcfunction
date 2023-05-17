scoreboard players set #random_min mem 1
scoreboard players set #random_max mem 9
function modules:random
scoreboard players operation $map mem = #random mem
execute if score $map mem = $map_last mem run function modules:map/randomize
execute if score $map mem = $map_last2 mem run function modules:map/randomize
execute unless score $map mem = $map_last mem unless score $map mem = $map_last2 mem run function modules:map/sub/spawn_point