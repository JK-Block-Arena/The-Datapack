scoreboard players add §c红队§r teamKill 10
scoreboard players add §9蓝队§r teamKill 10
scoreboard players add §a绿队§r teamKill 10
scoreboard players add #count teamKill 30

execute store result score #before mem run bossbar get bossbar:white value
execute if score #match_type mem matches 3 run scoreboard players add #before mem 1200
execute if score #match_type mem matches 2 run scoreboard players add #before mem 1110

execute store result bossbar bossbar:white value run scoreboard players get #before mem
execute store result bossbar bossbar:red value run scoreboard players get #before mem
execute store result bossbar bossbar:blue value run scoreboard players get #before mem
execute store result bossbar bossbar:green value run scoreboard players get #before mem
execute store result bossbar bossbar:yellow value run scoreboard players get #before mem
execute store result bossbar sp:white value run scoreboard players get #before mem