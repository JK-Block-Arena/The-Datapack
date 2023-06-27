execute as @s run function pvp:state/lobby/enter
bossbar set bossbar:white players @a[scores={state=0},gamemode=adventure]
execute if score #switch_bossbar mem matches 1 run bossbar set sp:white_v1 players @a[gamemode=spectator]
execute unless score #switch_bossbar mem matches 1 run bossbar set sp:white_v1 visible false