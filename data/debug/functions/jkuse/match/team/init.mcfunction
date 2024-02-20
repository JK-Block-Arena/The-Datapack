tag @e[tag=enable_class] remove banned_class
function pvp:class/update
fill 9 236 19 7 238 19 white_stained_glass
fill 15 237 15 11 237 11 red_concrete
fill 1 237 15 5 237 11 blue_concrete
fill 15 237 1 11 237 5 green_concrete
scoreboard players reset #count teamKill
scoreboard players set #switch_bossbar mem 1
function debug:jkuse/switch_bossbar