# 第一次进入游戏的玩家，加入游戏时执行
# as 玩家

function pvp:player_first_enter
function modules:stat/player_first_enter
function modules:basic/player_first_enter
execute if score #match_mode mem matches 1 run gamemode spectator @s