kill @s[scores={mem=..0}]
scoreboard players remove @s mem 1
# 粒子
particle witch ~ ~ ~ 0.2 0.1 0.2 0.1 6
# 移动（朝向最近的玩家）
execute as @s[tag=10_flag_0] at @s facing entity @e[limit=1,sort=nearest,tag=!invisible,team=!lobby,type=#modules:living] eyes run tp @s ^ ^ ^1.5
execute as @s[tag=10_flag_1] facing entity @e[limit=1,sort=nearest,tag=!invisible,team=!red,type=#modules:living] eyes run tp @s ^ ^ ^1.5
execute as @s[tag=10_flag_2] facing entity @e[limit=1,sort=nearest,tag=!invisible,team=!blue,type=#modules:living] eyes run tp @s ^ ^ ^1.5
execute as @s[tag=10_flag_3] facing entity @e[limit=1,sort=nearest,tag=!invisible,team=!green,type=#modules:living] eyes run tp @s ^ ^ ^1.5
execute as @s[tag=10_flag_4] facing entity @e[limit=1,sort=nearest,tag=!invisible,team=!yellow,type=#modules:living] eyes run tp @s ^ ^ ^1.5
execute as @s[tag=10_flag_5] facing entity @e[limit=1,sort=nearest,tag=!invisible,team=!red_v1,type=#modules:living] eyes run tp @s ^ ^ ^1.5
execute as @s[tag=10_flag_6] facing entity @e[limit=1,sort=nearest,tag=!invisible,team=!blue_v1,type=#modules:living] eyes run tp @s ^ ^ ^1.5
# 提示
execute as @s[tag=10_flag_0] run title @a[distance=..6,team=!lobby,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 有阴森森的东西飘在附近","bold":true}
execute as @s[tag=10_flag_1] run title @a[distance=..6,team=!red,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 有阴森森的东西飘在附近","bold":true}
execute as @s[tag=10_flag_2] run title @a[distance=..6,team=!blue,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 有阴森森的东西飘在附近","bold":true}
execute as @s[tag=10_flag_3] run title @a[distance=..6,team=!green,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 有阴森森的东西飘在附近","bold":true}
execute as @s[tag=10_flag_4] run title @a[distance=..6,team=!yellow,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 有阴森森的东西飘在附近","bold":true}
execute as @s[tag=10_flag_5] run title @a[distance=..6,team=!red_v1,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 有阴森森的东西飘在附近","bold":true}
execute as @s[tag=10_flag_6] run title @a[distance=..6,team=!blue_v1,gamemode=!spectator] actionbar {"color":"gold","text":"⚠ 有阴森森的东西飘在附近","bold":true}
# 伤害
execute as @s[tag=10_flag_0] as @e[team=!lobby,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_1] as @e[team=!red,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_2] as @e[team=!blue,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_3] as @e[team=!green,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_4] as @e[team=!yellow,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_5] as @e[team=!red_v1,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim
execute as @s[tag=10_flag_6] as @e[team=!blue_v1,distance=..3,type=#modules:living] run function class:10_summoner/flag/victim