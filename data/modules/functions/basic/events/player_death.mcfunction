# 在玩家死亡并复活后执行
# as 玩家
function pvp:state/player_death
execute if score @s state matches 0..2 run function modules:kill_count/player_death
execute if score @s state matches 0..2 run function modules:stat/player_death
execute if score @s state matches 0..2 run function modules:tip/player_death
function class:events/player_death
# 放在 kill_count 之后执行
function modules:mino1/player_death
