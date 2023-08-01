tag @e[tag=enable_class] remove banned_class
function pvp:class/update
fill 9 236 19 7 238 19 minecraft:white_stained_glass
fill 15 237 15 11 237 11 minecraft:red_concrete
fill 1 237 15 5 237 11 minecraft:blue_concrete
fill 15 237 1 11 237 5 minecraft:green_concrete
scoreboard players reset #count teamKill
scoreboard players set #switch_bossbar mem 1
function debug:jkuse/switch_bossbar