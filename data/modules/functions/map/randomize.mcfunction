execute store result score #random mem run random value 1..9
scoreboard players operation $map mem = #random mem
execute if score $map mem = $map_last mem run function modules:map/randomize
execute if score $map mem = $map_last2 mem run function modules:map/randomize
execute unless score $map mem = $map_last mem unless score $map mem = $map_last2 mem run function modules:map/sub/spawn_point