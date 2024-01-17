execute as @a[scores={state=0},gamemode=!creative,tag=pass] at @s run function pvp:state/lobby/tick8
execute as @a[scores={state=1},gamemode=!creative,tag=pass] at @s run function pvp:state/respawn/tick8
execute as @a[scores={state=2},gamemode=!creative,tag=pass] at @s run function pvp:state/battle/tick8

execute as @e[tag=time,tag=lobby_item,limit=1] at @s run function pvp:state/lobby/update_time

execute unless score $mutation mem matches 11 as @a[gamemode=adventure,scores={tip_0_tutorial=7..}] at @s unless score @s class matches 1..11 run function modules:mutation/special/2_trigger