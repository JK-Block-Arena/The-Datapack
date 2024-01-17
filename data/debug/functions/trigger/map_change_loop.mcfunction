#scoreboard players set #people mem 12
execute store result score #random mem run random value 1..7
scoreboard players operation $map mem = #random mem
execute if score $map mem = $map_last mem run function debug:trigger/map_change_loop
execute if score $map mem = $map_last2 mem run function debug:trigger/map_change_loop
execute if score $map mem matches 3 if score #people mem matches 9.. run function debug:trigger/map_change_loop
execute if score $map mem matches 7 if score #people mem matches 11.. run function debug:trigger/map_change_loop