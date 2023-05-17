execute as @a unless score @s class matches 1.. run scoreboard players set @s class 1
scoreboard players set @a[scores={state=3}] state 0
execute as @a[tag=pass] at @s run function pvp:state/lobby/in/prepared
tellraw @a[tag=pass] [{"text":" ❇ ","color":"aqua"}," 管理员已强制要求所有玩家进入游戏！"]