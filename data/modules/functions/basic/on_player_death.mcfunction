# 触发死亡接口
execute if score $mutation mem matches 2 as @s[scores={state=1..2}] run function modules:mutation/special/2_trigger
scoreboard players set @s death 0
function modules:basic/events/player_death