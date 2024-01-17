# 玩家进入战场触发
execute store result storage stat:mem mem.class int 1 run scoreboard players get @s class

function modules:stat/player_spawn with storage stat:mem mem
function modules:mutation/player_spawn
function class:events/player_spawn