scoreboard players set #match_type mem 1
scoreboard players set #match_time mem 220
scoreboard players set #match_time_can mem 1
fill 0 237 0 16 237 16 air
tag @e[tag=enable_class] remove banned_class
tag @e[tag=enable_class] remove match_v1_red
tag @e[tag=enable_class] remove match_v1_blue
function pvp:class/update
scoreboard players reset #switch_bossbar mem
function debug:jkuse/switch_bossbar
function pvp:state/lobby/reset_1v1_score