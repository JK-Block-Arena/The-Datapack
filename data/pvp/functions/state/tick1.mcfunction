execute as @a[scores={state=0},gamemode=adventure,tag=pass] at @s run function pvp:state/lobby/tick1
execute as @a[scores={state=1},gamemode=!creative,tag=pass] at @s run function pvp:state/respawn/tick1
