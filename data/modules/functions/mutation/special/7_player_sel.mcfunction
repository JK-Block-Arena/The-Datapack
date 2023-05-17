tag @s add 7_player_sel
execute as @e[tag=7_marker_sel] if score @s player_id = @p[tag=7_player_sel] player_id run tag @s add 7_marker_sel2
tag @s remove 7_player_sel