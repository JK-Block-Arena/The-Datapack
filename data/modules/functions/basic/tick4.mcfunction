# 检查玩家初次进入
scoreboard players reset @a[team=] leave_game
execute as @a[team=] at @s run function modules:basic/events/player_first_enter

# 检查玩家进入
execute as @a unless score @s leave_game matches 0 at @s run function modules:basic/events/player_enter
scoreboard players set @a leave_game 0