kill @s[scores={mem=..0}]
scoreboard players remove @s mem 1
# 粒子
particle witch ~ ~ ~ 0.2 0.1 0.2 0.1 6
# 移动（朝向最近的生物）
execute as @s[tag=10_flag_lobby] facing entity @e[tag=!invisible,team=!lobby,limit=1,sort=nearest,type=#modules:living] eyes run tp @s ^ ^ ^1
execute as @s[tag=10_flag_red] facing entity @e[tag=!invisible,team=!red,limit=1,sort=nearest,type=#modules:living] eyes run tp @s ^ ^ ^1
execute as @s[tag=10_flag_blue] facing entity @e[tag=!invisible,team=!blue,limit=1,sort=nearest,type=#modules:living] eyes run tp @s ^ ^ ^1
execute as @s[tag=10_flag_green] facing entity @e[tag=!invisible,team=!green,limit=1,sort=nearest,type=#modules:living] eyes run tp @s ^ ^ ^1
execute as @s[tag=10_flag_yellow] facing entity @e[tag=!invisible,team=!yellow,limit=1,sort=nearest,type=#modules:living] eyes run tp @s ^ ^ ^1
execute as @s[tag=10_flag_red_v1] facing entity @e[tag=!invisible,team=!red_v1,limit=1,sort=nearest,type=#modules:living] eyes run tp @s ^ ^ ^1
execute as @s[tag=10_flag_blue_v1] facing entity @e[tag=!invisible,team=!blue_v1,limit=1,sort=nearest,type=#modules:living] eyes run tp @s ^ ^ ^1

# 伤害
execute as @s[tag=10_flag_lobby] as @e[team=!lobby,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_red] as @e[team=!red,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_blue] as @e[team=!blue,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_green] as @e[team=!green,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_yellow] as @e[team=!yellow,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_red_v1] as @e[team=!red_v1,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_blue_v1] as @e[team=!blue_v1,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim