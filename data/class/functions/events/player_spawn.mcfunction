# 进入战场的玩家执行
tag @s remove 7_healer
function class:modules/sneak/player_spawn
execute as @s[scores={class=1}] run function class:1_ranger/player_spawn
execute as @s[scores={class=2}] run function class:2_shadow/player_spawn
execute as @s[scores={class=3}] run function class:3_illager/player_spawn
execute as @s[scores={class=4}] run function class:4_oceancat/player_spawn
execute as @s[scores={class=5}] run function class:5_knight/player_spawn
execute as @s[scores={class=6}] run function class:6_man/player_spawn
execute as @s[scores={class=7}] run function class:7_nurse/player_spawn
execute as @s[scores={class=8}] run function class:8_jiazi/player_spawn
execute as @s[scores={class=9}] run function class:9_qianji/player_spawn
execute as @s[scores={class=10}] run function class:10_summoner/player_spawn

execute as @s[scores={class=99}] run function class:99_oneshot/player_spawn

tag @s remove 4_fly
