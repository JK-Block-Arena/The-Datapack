scoreboard players add §e黄队§r teamKill 5
scoreboard players add #count teamKill 5

execute store result score #before mem run bossbar get bossbar:white value
execute if score #match_type mem matches 3 run scoreboard players add #before mem 200
execute if score #match_type mem matches 2 run scoreboard players add #before mem 185

execute store result bossbar bossbar:white value run scoreboard players get #before mem
execute store result bossbar bossbar:red value run scoreboard players get #before mem
execute store result bossbar bossbar:blue value run scoreboard players get #before mem
execute store result bossbar bossbar:green value run scoreboard players get #before mem
execute store result bossbar bossbar:yellow value run scoreboard players get #before mem
execute store result bossbar sp:white value run scoreboard players get #before mem