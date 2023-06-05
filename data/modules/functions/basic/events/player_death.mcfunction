# 在玩家死亡并复活后执行
# as 玩家
function pvp:state/player_death
execute as @s[scores={state=0..2}] run function modules:kill_count/player_death
execute unless score $mutation mem matches 8 run scoreboard players add @s[scores={state=0..2}] statPlayerDeathReal 1
execute as @s[scores={state=0..2}] run function modules:tip/player_death
function class:events/player_death
# 放在 kill_count 之后执行
function modules:mino1/player_death
